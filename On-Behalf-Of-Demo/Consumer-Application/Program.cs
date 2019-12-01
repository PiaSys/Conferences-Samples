using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Identity.Client;
using Newtonsoft.Json;

namespace Consumer_Application
{
    class Program
    {
        // piasysdev.onmicrosoft.com
        //private static string ClientId = "36d44e5d-b6e3-46ce-8268-0aed0bb26a75";
        //private static string Tenant = "6c94075a-da0a-4c6a-8411-badf652e8b53";

        // piasys1.onmicrosoft.com
        private static string ClientId = "d63f3e1d-7d39-4f7b-ba76-d944fc9df4ec";
        // private static string Tenant = "2b89bcbd-b2fc-4429-a793-4b91d902e0cb";

        public static IPublicClientApplication PublicClientApp;

        static void Main(string[] args)
        {
            Task.Run(async () => {

                PublicClientApp = PublicClientApplicationBuilder.Create(ClientId)
                    // .WithAuthority(AzureCloudInstance.AzurePublic, Tenant)
                    .WithDefaultRedirectUri()
                    .Build();

                var _scopes = new String[] { "api://middle-tier-service/MiddleTier.Consumer" };

                var authResult = await PublicClientApp.AcquireTokenInteractive(_scopes)
                                          .ExecuteAsync();

                Console.WriteLine("Here is the access token for the Middle-Tier-Service API:");
                Console.WriteLine(authResult.AccessToken);

                var jsonResponse = HttpHelper.MakeGetRequestForString("https://localhost:44363/api/CustomAPI?spoResourceUri=https://eventhandler.sharepoint.com/", authResult.AccessToken);
                var responseValues = JsonConvert.DeserializeObject<String[]>(jsonResponse);

                Console.WriteLine("\n\nHere are the values coming out from the Middle-Tier-Service API:");
                foreach (var v in responseValues)
                {
                    Console.WriteLine(v);
                }

            }).GetAwaiter().GetResult();

            Console.ReadLine();
        }
    }
}
