using Microsoft.Identity.Client;
using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace MSALConfidentialClientDemo
{
    class Program
    {
        static IConfidentialClientApplication confidentialClient;
        static string clientId = "{client_id}";
        static string clientSecret = "{client_secret}";
        static string tenantId = "{tenant_id}";
        static Uri authority = new Uri($"https://login.microsoftonline.com/{tenantId}");

        static async Task Main(string[] args)
        {
            confidentialClient = ConfidentialClientApplicationBuilder
                .Create(clientId)
                .WithAuthority(authority)
                .WithClientSecret(clientSecret)
                .Build();

            var scopes = new string[] { "https://graph.microsoft.com/.default" };

            AuthenticationResult result = await confidentialClient.AcquireTokenForClient(scopes).ExecuteAsync();

            Console.WriteLine(result.AccessToken);
            Console.WriteLine("\n\n");

            var httpClient = new HttpClient();
            var httpRequest = new HttpRequestMessage(HttpMethod.Get,
                "https://graph.microsoft.com/v1.0/sites/piasysdev.sharepoint.com:root/");

            httpRequest.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue(
                "Bearer", result.AccessToken);

            var response = await httpClient.SendAsync(httpRequest);

            if (response.IsSuccessStatusCode)
            {
                Console.WriteLine(await response.Content.ReadAsStringAsync());
            }
            else
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(await response.Content.ReadAsStringAsync());
            }

        }
    }
}
