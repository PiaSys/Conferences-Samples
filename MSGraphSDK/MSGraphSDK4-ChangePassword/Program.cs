using Azure.Identity;
using Microsoft.Graph;
using System;
using System.Threading.Tasks;
using System.Linq;

namespace MSGraphSDK4ChangePassword
{
    class Program
    {
        static async Task Main(string[] args)
        {
            // Define the permission scopes that you need
            string[] scopes = { "Directory.AccessAsUser.All" };

            // Start interactive login session
            var options = new InteractiveBrowserCredentialOptions()
            {
                ClientId = "<client-id>",
                TenantId = "<tenant-id>",
                RedirectUri = new Uri("http://localhost")
            };

            // And a TokenCredential implementation
            var interactiveCredential = new InteractiveBrowserCredential(options);

            // Create GraphServiceClient instance
            var graphClient = new GraphServiceClient(interactiveCredential, scopes);

            // Set variable (in real solution you should rely on UI to collect passwords in a secure way)
            var currentPassword = "currentPassword";
            var newPassword = "newPassword";

            // Change current user's password
            await graphClient.Me.ChangePassword(currentPassword, newPassword).Request().PostAsync();
            Console.WriteLine("Password changed!");
        }
    }
}
