using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using PiaSys.Team.Provisioning.Model;
using PiaSys.Team.Provisioning.TemplatesProvider;
using System.Web.Http;

namespace PiaSys.Team.Provisioning
{
    public class ProvisionTeam
    {
        private ITemplatesProvider _templatesProvider;

        public ProvisionTeam(ITemplatesProvider templatesProvider)
        {
            _templatesProvider = templatesProvider;
        }

        [FunctionName("ProvisionTeam")]
        public async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("ProvisionTeam function invoked.");

            try
            {
                // Get request body
                string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
                var request = JsonConvert.DeserializeObject<TeamProvisionRequest>(requestBody);

                if (!String.IsNullOrEmpty(request.TeamTemplateUri))
                {
                    // Get the URL of the root site collection
                    var rootSiteUrl = request.RequestSiteUrl.Substring(0, request.RequestSiteUrl.IndexOf("/", 10));

                    // Get the provisioning template based on the provided URI
                    var templateUri = new Uri(new Uri(request.RequestSiteUrl), request.TeamTemplateUri).AbsoluteUri;
                    var tenantTemplate = _templatesProvider.GetTenantTemplate(templateUri);

                    if (tenantTemplate.Teams != null
                        && tenantTemplate.Teams.Teams != null
                        && tenantTemplate.Teams.Teams.Count > 0)
                    {
                        // Get the first team template
                        var team = tenantTemplate.Teams.Teams[0];

                        // Configure Team properties
                        team.DisplayName = request.TeamTitle;
                        team.MailNickname = request.TeamAlias.ToLower();

                        // Configure Team security
                        team.Security = new OfficeDevPnP.Core.Framework.Provisioning.Model.Teams.TeamSecurity();
                        foreach (var owner in request.TeamOwners)
                        {
                            team.Security.Owners.Add(new OfficeDevPnP.Core.Framework.Provisioning.Model.Teams.TeamSecurityUser { UserPrincipalName = owner.UPN });
                        }
                        foreach (var member in request.TeamMembers)
                        {
                            team.Security.Members.Add(new OfficeDevPnP.Core.Framework.Provisioning.Model.Teams.TeamSecurityUser { UserPrincipalName = member.UPN });
                        }

                        // Provision the template onto the target tenant
                        SPOUtilities.ApplyTenantTemplate(rootSiteUrl, tenantTemplate, log);
                    }
                }
                else
                {
                    throw new ApplicationException("Invalid input request! Missing Team Template URI!");
                }
            }
            catch (Exception ex)
            {
                return new ExceptionResult(ex, true);
            }

            return new OkObjectResult("All good!");
        }
    }
}
