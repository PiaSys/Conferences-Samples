using Azure.Identity;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using GraphSDK = Microsoft.Graph;
using CSOM = Microsoft.SharePoint.Client;
using PnP.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SitesSelected.ConsumerApp
{
    public class SitesSelectedDemoService
    {
        private readonly ILogger<SitesSelectedDemoService> logger;
        private readonly IConfiguration configuration;

        public SitesSelectedDemoService(
            ILogger<SitesSelectedDemoService> logger,
            IConfiguration configuration)
        {
            this.logger = logger;
            this.configuration = configuration;
        }

        public async Task RunAsync()
        {
            #region Here we use Microsoft Graph SDK

            // Try to add a list to a target SPO site via Microsoft Graph for a site with granted permissions
            try
            {
                await ConsumeSPOSelectedSiteViaGraph(this.configuration.GetValue<string>("AppSettings:GrantedSite"));
            }
            catch (Exception ex)
            {
                this.logger.LogError("Failed to consume SPO via Microsoft Graph! Error: {0}", ex.Message);
            }

            // Try to add a list to a target SPO site via Microsoft Graph for a site with NOT granted permissions
            try
            {
                await ConsumeSPOSelectedSiteViaGraph(this.configuration.GetValue<string>("AppSettings:NotGrantedSite"));
            }
            catch (Exception ex)
            {
                this.logger.LogError("Failed to consume SPO via Microsoft Graph! Error: {0}", ex.Message);
            }

            #endregion

            #region Here we use SharePoint CSOM

            // Try to add a list to a target SPO site via SharePoint CSOM for a site with granted permissions
            try
            {
                await ConsumeSPOSelectedSiteViaCSOM(this.configuration.GetValue<string>("AppSettings:GrantedSite"));
            }
            catch (Exception ex)
            {
                this.logger.LogError("Failed to consume SPO via SharePoint CSOM! Error: {0}", ex.Message);
            }

            // Try to add a list to a target SPO site via SharePoint CSOM for a site with NOT granted permissions
            try
            {
                await ConsumeSPOSelectedSiteViaCSOM(this.configuration.GetValue<string>("AppSettings:NotGrantedSite"));
            }
            catch (Exception ex)
            {
                this.logger.LogError("Failed to consume SPO via SharePoint CSOM! Error: {0}", ex.Message);
            }

            #endregion
        }

        private async Task ConsumeSPOSelectedSiteViaGraph(string siteRelativeUri)
        {
            this.logger.LogInformation($"Consuming SPO site '{siteRelativeUri}' with selected permissions via Microsoft Graph");

            // Define the permission scopes that you need
            string[] scopes = { ".default" };

            // Credentials
            var tenantId = this.configuration.GetValue<string>("AppSettings:TenantId");
            var clientId = this.configuration.GetValue<string>("AppSettings:ClientId");
            var clientSecret = this.configuration.GetValue<string>("AppSettings:ClientSecret");

            // And a TokenCredential implementation
            var clientSecretCredential = new ClientSecretCredential(
                tenantId,
                clientId,
                clientSecret);

            // GraphServiceClient now supports as TokenCredential input
            var graphClient = new GraphSDK.GraphServiceClient(clientSecretCredential, scopes);

            // Get a reference to the target site
            var site = await graphClient.Sites.GetByPath(siteRelativeUri,
                this.configuration.GetValue<string>("AppSettings:SPOTenantName")).Request().GetAsync();

            // Define a new generic list
            var newList = new GraphSDK.List
            {
                DisplayName = $"Generated via Microsoft Graph - {Guid.NewGuid()}",
                ListInfo = new GraphSDK.ListInfo
                {
                    Template = "genericList"
                }
            };

            // Add the list to the site
            await graphClient.Sites[site.Id].Lists.Request().AddAsync(newList);

            this.logger.LogInformation("Successfully added a list to SPO site with selected permissions via Microsoft Graph");
        }

        private async Task ConsumeSPOSelectedSiteViaCSOM(string siteRelativeUri)
        {
            this.logger.LogInformation($"Consuming SPO site '{siteRelativeUri}' with selected permissions via CSOM");

            var spoTenant = this.configuration.GetValue<string>("AppSettings:SPOTenantName");

            // Connect to the target SPO site via CSOM
            using (var clientContext = await AuthenticationManager.CreateWithCertificate(
                this.configuration.GetValue<string>("AppSettings:ClientId"),
                System.Security.Cryptography.X509Certificates.StoreName.My,
                System.Security.Cryptography.X509Certificates.StoreLocation.CurrentUser,
                this.configuration.GetValue<string>("AppSettings:CertificateThumbprint"),
                this.configuration.GetValue<string>("AppSettings:TenantId"))
                .GetContextAsync($"https://{spoTenant}{siteRelativeUri}"))
            {
                // Let's see if the current user is site admin
                var currentUser = clientContext.Web.CurrentUser;
                clientContext.Load(currentUser, u => u.IsSiteAdmin);
                await clientContext.ExecuteQueryAsync();

                this.logger.LogInformation($"Current user is site admin? {currentUser.IsSiteAdmin}");

                // Define a new generic list
                var newList = new CSOM.ListCreationInformation
                {
                    Title = $"Generated via CSOM - {Guid.NewGuid()}",
                    TemplateType = (int)CSOM.ListTemplateType.GenericList
                };

                // Add the list to the site
                clientContext.Web.Lists.Add(newList);
                await clientContext.ExecuteQueryAsync();
            }

            this.logger.LogInformation("Successfully added a list to SPO site with selected permissions via CSOM");
        }
    }
}
