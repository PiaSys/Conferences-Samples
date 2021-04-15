using Microsoft.Graph;
using Microsoft.Graph.Auth;
using Microsoft.Identity.Client;
using System;
using System.Threading.Tasks;

namespace MsGraphSDKDemo
{
    class Program
    {
        const string clientId = "6f72a3da-3407-4d6e-9cc1-0c499fc624af";
        const string tenantId = "6c94075a-da0a-4c6a-8411-badf652e8b53";

        static async Task Main(string[] args)
        {
            // Create and configure MSAL public client application
            IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
                .Create(clientId)
                .WithTenantId(tenantId)
                .Build();

            // Create an authentication provider for public credentials flow with device code
            DeviceCodeProvider authProvider = new DeviceCodeProvider(publicClientApplication);

            // List of supported authentication providers:
            // - AuthorizationCodeProvider
            // - DeviceCodeProvider
            // - IntegratedWindowsAuthenticationProvider
            // - InteractiveAuthenticationProvider
            // - OnBehalfOfProvider
            // - UsernamePasswordProvider

            // Create a new instance of the GraphServiceClient based on the just created authentication provider
            var graphClient = new GraphServiceClient(authProvider);

            // Consume SPO via Microsoft Graph SDK
            var lists = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                .Lists
                .Request()
                .GetAsync();

            foreach (var l in lists)
            {
                Console.WriteLine(l.DisplayName);
            }

            var documents = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                .Lists[lists[0].Id]
                .Request()
                .GetAsync();

            Console.WriteLine(documents.DisplayName);

            var docs = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                .Lists[lists[0].Id]
                .Items
                .Request()
                .Header("Prefer", "HonorNonIndexedQueriesWarningMayFailRandomly")
                .Expand("fields")
                .Filter("fields/Title eq 'Sample Document 01'")
                .GetAsync();

            if (docs.Count > 0)
            {
                Console.WriteLine(docs[0].Fields.AdditionalData["Title"]);
            }
        }
    }
}
