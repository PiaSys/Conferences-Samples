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
            // Define the permission scopes that you need
            string[] scopes = { "User.Read", "Files.Read.All", "Group.Read.All" };

            // Using Azure.Identity library, configure a set of credential options
            DeviceCodeCredentialOptions deviceCodeCredentialOptions = new DeviceCodeCredentialOptions()
            {
                ClientId = "<clientId>",
                TenantId = "<tenantId>",
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
