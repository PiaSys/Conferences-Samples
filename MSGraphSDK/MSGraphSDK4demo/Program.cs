using Azure.Identity;
using Microsoft.Graph;
using System;
using System.Threading.Tasks;
using System.Linq;

namespace MSGraphSDK4demo
{
    class Program
    {
        static async Task Main(string[] args)
        {
            await UseClientSecretCredentialAsync();
            await UseInteractiveBrowserCredentialAsync();
            await UseDefaultAzureCredentialAsync();
        }

        static async Task UseClientSecretCredentialAsync()
        {
            // Define the permission scopes that you need
            string[] scopes = { ".default" };

            #region Client Credentials

            var tenantId = "<client-id>";
            var clientId = "<tenant-id>";
            var clientSecret = "<client-secret>";

            #endregion

            // And a TokenCredential implementation
            var clientSecretCredential = new ClientSecretCredential(
                tenantId,
                clientId,
                clientSecret);

            // GraphServiceClient now supports as TokenCredential input
            var graphClient = new GraphServiceClient(clientSecretCredential, scopes);

            // Use regular Graph SDK fluent syntax
            var me = await graphClient.Users["paolo@piasysdev.onmicrosoft.com"].Request().GetAsync();
            Console.WriteLine(me.DisplayName);
        }

        static async Task UseInteractiveBrowserCredentialAsync()
        {
            // Define the permission scopes that you need
            string[] scopes = { "User.Read" };

            var options = new InteractiveBrowserCredentialOptions()
            {
                ClientId = "<client-id>",
                TenantId = "<tenant-id>",
                RedirectUri = new Uri("http://localhost")
            };

            // And a TokenCredential implementation
            var interactiveCredential = new InteractiveBrowserCredential(options);

            // GraphServiceClient now supports as TokenCredential input
            var graphClient = new GraphServiceClient(interactiveCredential, scopes);

            // Use regular Graph SDK fluent syntax
            var me = await graphClient.Me.Request().GetAsync();
            Console.WriteLine(me.DisplayName);

        }

        static async Task UseDefaultAzureCredentialAsync()
        {
            // Define the permission scopes that you need
            string[] scopes = { ".default" };

            // And a TokenCredential implementation
            var azureCredential = new DefaultAzureCredential(true);

            // GraphServiceClient now supports as TokenCredential input
            var graphClient = new GraphServiceClient(azureCredential, scopes);

            // Use regular Graph SDK fluent syntax
            var me = await graphClient.Me.Request().GetAsync();
            Console.WriteLine(me.DisplayName);
        }

        static async Task ConsumeGraphAsync()
        {
            // Define the permission scopes that you need
            string[] scopes = { "User.Read", "Files.Read.All", "Group.Read.All" };

            // Using Azure.Identity library, configure a set of credential options
            DeviceCodeCredentialOptions deviceCodeCredentialOptions = new DeviceCodeCredentialOptions()
            {
                ClientId = "<client-id>",
                TenantId = "<tenant-id>",
                DeviceCodeCallback = async (deviceCodeInfo, cancellationToken) =>
                {
                    // Write the Device Code in the Output window
                    System.Diagnostics.Process.Start(
                        new System.Diagnostics.ProcessStartInfo
                        {
                            FileName = $"PowerShell.exe",
                            Arguments = $"-Command \"'{ deviceCodeInfo.UserCode }' | clip\"",
                            UseShellExecute = true,
                            WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden
                        });

                    // Start the browser to input the Device Code
                    System.Diagnostics.Process.Start(
                        new System.Diagnostics.ProcessStartInfo
                        {
                            FileName = deviceCodeInfo.VerificationUri.ToString(),
                            UseShellExecute = true
                        });

                    // OR
                    //Console.WriteLine($"Please go to {deviceCodeInfo.VerificationUri} and provide the following device code: {deviceCodeInfo.UserCode}");
                    //Console.ReadLine();
                }
            };

            // And a TokenCredential implementation
            DeviceCodeCredential deviceCodeCredentialCredential = new DeviceCodeCredential(deviceCodeCredentialOptions);

            // GraphServiceClient now supports as TokenCredential input
            var graphClient = new GraphServiceClient(deviceCodeCredentialCredential, scopes);

            // Use regular Graph SDK fluent syntax
            var me = await graphClient.Me.Request().GetAsync();
            Console.WriteLine(me.DisplayName);

            // Or you can also use the new GetResponseAsync method
            var meResponse = await graphClient.Me.Request().GetResponseAsync();

            // And process the response at HTTP level with status code
            Console.WriteLine($"HTTP Status code: {meResponse.StatusCode}");

            // with response headers
            foreach (var h in meResponse.HttpHeaders)
            {
                var values = h.Value.Aggregate(string.Empty, (s, v) => ($"{s},{v}")).TrimStart(',');
                Console.WriteLine($"{h.Key}: {values}");
            }

            // with response content as string
            var meString = await meResponse.Content.ReadAsStringAsync();
            Console.WriteLine(meString);

            // or still with fully typed response
            me = await meResponse.GetResponseObjectAsync();
            Console.WriteLine(me.DisplayName);
        }
    }
}
