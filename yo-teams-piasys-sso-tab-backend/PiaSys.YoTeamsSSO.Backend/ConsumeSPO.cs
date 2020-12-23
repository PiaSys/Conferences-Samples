using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using PnP.Core.Services.Builder.Configuration;
using PnP.Core.Services;
using Microsoft.Extensions.Options;
using PnP.Core.Auth;
using System.Security;

namespace PiaSys.YoTeamsSSO.Backend
{
    public class ConsumeSPO
    {
        public const string AUTHORIZATION_HEADER = "Authorization";

        private readonly IPnPContextFactory _pnpContextFactory;

        public ConsumeSPO(IPnPContextFactory pnpContextFactory)
        {
            _pnpContextFactory = pnpContextFactory;
        }

        [FunctionName("ConsumeSPO")]
        public async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("PiaSys Yo Teams Backend function triggered!");

            var targetSiteUrl = new Uri(Environment.GetEnvironmentVariable("TargetSiteUrl"));
            var clientId = Environment.GetEnvironmentVariable("ClientId");
            var tenantId = Environment.GetEnvironmentVariable("TenantId");
            var clientSecret = this.ToSecureString(Environment.GetEnvironmentVariable("ClientSecret"));

            // Let's try to get the access token from the Authorization request header
            if (req.Headers.ContainsKey(AUTHORIZATION_HEADER) 
                && req.Headers[AUTHORIZATION_HEADER].Count == 1)
            {
                string accessToken = req.Headers[AUTHORIZATION_HEADER][0].Split(' ', StringSplitOptions.RemoveEmptyEntries)[1];

                var oboProvider = new OnBehalfOfAuthenticationProvider(clientId, tenantId, clientSecret,
                    () => accessToken);

                using (var context = await _pnpContextFactory.CreateAsync(targetSiteUrl, oboProvider))
                {
                    var web = await context.Web.GetAsync(w => w.Id, w => w.Title, w => w.CurrentUser);

                    var user = await context.Web.CurrentUser.GetAsync(
                        u => u.Title,
                        u => u.UserPrincipalName);

                    var result = new { 
                        web = new { 
                            web.Id,
                            web.Title,
                        },
                        user = new
                        {
                            user.UserPrincipalName,
                            user.Title,
                        }
                    };

                    return new JsonResult(result);
                }
            }

            return new UnauthorizedObjectResult(null);
        }

        internal SecureString ToSecureString(string input)
        {
            if (string.IsNullOrEmpty(input))
                throw new ArgumentException("Input string is empty and cannot be made into a SecureString", nameof(input));

            SecureString secure = new SecureString();
            foreach (char c in input)
            {
                secure.AppendChar(c);
            }
            secure.MakeReadOnly();
            return secure;
        }
    }
}
