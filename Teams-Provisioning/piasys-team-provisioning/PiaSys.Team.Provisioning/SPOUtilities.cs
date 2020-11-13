using Microsoft.Extensions.Logging;
using Microsoft.Identity.Client;
using Microsoft.SharePoint.Client;
using OfficeDevPnP.Core;
using OfficeDevPnP.Core.Framework.Provisioning.Model;
using OfficeDevPnP.Core.Framework.Provisioning.ObjectHandlers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PiaSys.Team.Provisioning
{
    /// <summary>
    /// Helper class to manage SPO settings and URLs
    /// </summary>
    public static class SPOUtilities
    {
        static String RegExSiteCollectionWithSubWebs = @"^(?<siteCollectionUrl>https\:\/\/(?<tenant>(\w|\-)+).sharepoint.com\/(sites|teams)\/(?<siteCollection>(\w|\-)+))(\/(?<subSite>(\w|\-)+))*";

        /// <summary>
        /// Provides the URL of a Site Collection starting from any URL of the target site
        /// </summary>
        /// <param name="resourceUrl">The URL of the resource in the target Site</param>
        /// <returns></returns>
        public static String GetSiteCollectionRootUrl(String resourceUrl)
        {
            // Prepare the resulting variable
            String result = null;

            // Get the Site Collection root URL
            System.Text.RegularExpressions.Regex regex =
                new System.Text.RegularExpressions.Regex(
                    SPOUtilities.RegExSiteCollectionWithSubWebs);

            var match = regex.Match(resourceUrl);
            if (match.Success)
            {
                result = match.Groups["siteCollectionUrl"].Value;
            }

            return (result);
        }

        public static string GetTenantAdministrationUrl(Uri uri)
        {
            var uriParts = uri.Host.Split('.');
            if (uriParts[0].EndsWith("-admin")) return uri.OriginalString;
            if (!uriParts[0].EndsWith("-admin"))
                return $"https://{uriParts[0]}-admin.{string.Join(".", uriParts.Skip(1))}";
            return null;
        }

        public static string GetTenantAdministrationUrl(string url)
        {
            return GetTenantAdministrationUrl(new Uri(url));
        }

        /// <summary>
        /// Applies a Provisioning Template Hierarchy to a target tenant
        /// </summary>
        /// <param name="targetSiteUrl">The URL of the target Site Collection</param>
        /// <param name="tenantTemplate">The Provisioning Template Hierarchy to apply</param>
        /// <param name="log">The TraceWriter to log activities</param>
        public static void ApplyTenantTemplate(String targetSiteUrl, ProvisioningHierarchy tenantTemplate, ILogger log)
        {
            ProvisioningTemplateApplyingInformation ptai =
                new ProvisioningTemplateApplyingInformation();

            // We exclude Term Groups because they are not supported in AppOnly
            ptai.HandlersToProcess = Handlers.All;
            ptai.HandlersToProcess ^= Handlers.TermGroups;

            ptai.MessagesDelegate += delegate (string message, ProvisioningMessageType messageType)
            {
                log.LogDebug($"{messageType} - {message}");
            };
            ptai.ProgressDelegate += delegate (string message, int step, int total)
            {
                log.LogInformation($"{step:00}/{total:00} - {message}");
            };

            var tenantUrl = SPOUtilities.GetTenantAdministrationUrl(targetSiteUrl);

            using (var tenantContext = SPOContextProvider.BuildAppOnlyClientContext(tenantUrl))
            {
                using (var pnpTenantContext = PnPClientContext.ConvertFrom(tenantContext))
                {
                    var tenant = new Microsoft.Online.SharePoint.TenantAdministration.Tenant(pnpTenantContext);

                    // Prepare a dictionary to hold the access tokens
                    var accessTokens = new Dictionary<String, String>();

                    // Get the Microsoft Graph Access Token
                    var clientApplication = ConfidentialClientApplicationBuilder
                        .Create(Environment.GetEnvironmentVariable("ClientId"))
                        .WithTenantId(Environment.GetEnvironmentVariable("Tenant"))
                        .WithClientSecret(Environment.GetEnvironmentVariable("ClientSecret")).Build();

                    try
                    {
                        string[] graphScopes = new string[] { "https://graph.microsoft.com/.default" };
                        var authenticationResult = clientApplication.AcquireTokenForClient(graphScopes).ExecuteAsync().GetAwaiter().GetResult();
                        var graphAccessToken = authenticationResult.AccessToken;
                        accessTokens.Add(new Uri("https://graph.microsoft.com/").Authority, graphAccessToken);
                    }
                    catch (Exception ex)
                    {
                        log.LogError(ex.Message);
                        throw;
                    }

                    // Configure the OAuth Access Tokens for the PnPClientContext, too
                    pnpTenantContext.PropertyBag["AccessTokens"] = accessTokens;
                    ptai.AccessTokens = accessTokens;

                    // Define a PnPProvisioningContext scope to share the security context across calls
                    using (var pnpProvisioningContext = new PnPProvisioningContext(async (r, s) =>
                    {
                        if (accessTokens.Any(i => i.Key.Equals(r, StringComparison.InvariantCultureIgnoreCase) ||
                            r.ToLower().Contains(i.Key)))
                        {
                            // In this scenario we just use the dictionary of access tokens
                            // in fact the overall operation for sure will take less than 1 hour
                            var item = accessTokens.FirstOrDefault(i =>
                                i.Key.Equals(r, StringComparison.InvariantCultureIgnoreCase) ||
                                r.ToLower().Contains(i.Key));

                            return await Task.FromResult(item.Value);
                        }
                        else
                        {
                            return (null);
                        }
                    }))
                    {
                        log.LogInformation($"Hierarchy Provisioning Started: {DateTime.Now:hh.mm.ss}");
                        tenant.ApplyProvisionHierarchy(tenantTemplate, null, ptai);
                        log.LogInformation($"Hierarchy Provisioning Completed: {DateTime.Now:hh.mm.ss}");
                    }
                }
            }
        }
    }

}
