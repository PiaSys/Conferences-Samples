using Microsoft.Identity.Client;
using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace MSALPublicClientDemo
{
    class Program
    {
        static IPublicClientApplication publicClient;
        static string clientId = "{client_id}";
        static string tenantId = "{tenant_id}";
        static Uri authority = new Uri($"https://login.microsoftonline.com/{tenantId}");

        static async Task Main(string[] args)
        {
            publicClient = PublicClientApplicationBuilder
                .Create(clientId)
                .WithAuthority(authority)
                .WithRedirectUri("http://localhost")
                .Build();

            var scopes = new string[] { "https://graph.microsoft.com/Sites.Read.All" };

            AuthenticationResult result = await publicClient.AcquireTokenInteractive(scopes).ExecuteAsync();

            Console.WriteLine(result.AccessToken);

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
