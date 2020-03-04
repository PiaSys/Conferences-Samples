using Microsoft.Identity.Client;
using Microsoft.SharePoint.Client;
using OfficeDevPnP.Core;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsumeSPOwithOAuth
{
    class Program
    {
        private static string ClientId = "ae2c671d-5bb1-4ff0-938f-ad4e59f66737";
        public static IPublicClientApplication PublicClientApp;

        static async Task Main(string[] args)
        {
            if (args.Length != 1)
            {
                Console.WriteLine("Please provide the URL of the target SharePoint Online site");
                return;
            }

            var targetSiteUrl = args[0];

            await ConsumeSPOWithOAuthAccessToken(targetSiteUrl);
        }

        private static async Task ConsumeSPOWithOAuthAccessToken(string targetSiteUrl)
        {
            var spoTenant = targetSiteUrl.Substring(0, targetSiteUrl.IndexOf('/', 8));

            PublicClientApp = PublicClientApplicationBuilder.Create(ClientId)
                .WithDefaultRedirectUri()
                .Build();

            var _scopes = new String[] { $"{spoTenant}/AllSites.Read" };

            var authResult = await PublicClientApp.AcquireTokenInteractive(_scopes)
                                      .ExecuteAsync();

            Console.WriteLine("Here is the Access Token for Graph API:");
            Console.WriteLine(authResult.AccessToken);
            var handler = new JwtSecurityTokenHandler();
            var token = handler.ReadJwtToken(authResult.AccessToken);

            var authManager = new AuthenticationManager();
            using (var context = authManager.GetAzureADAccessTokenAuthenticatedContext(targetSiteUrl, authResult.AccessToken))
            {
                var web = context.Web;
                context.Load(web, w => w.Title);
                context.ExecuteQueryRetry();

                Console.WriteLine($"The site title is: {web.Title}");
            }
        }
    }
}
