using Microsoft.Identity.Client;
using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace MSALPublicClientDemo
{
    class Program
    {
        static IPublicClientApplication publicClient;
        static string clientId = "797b0e87-6626-4eb2-8a29-a4cb4206c81e";
        static string tenantId = "6c94075a-da0a-4c6a-8411-badf652e8b53";
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
