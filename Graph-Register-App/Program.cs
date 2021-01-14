using Microsoft.Identity.Client;
using System;
using System.IO;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Graph_Register_App
{
    class Program
    {
        #region Settings
        static IConfidentialClientApplication confidentialClient;
        static string clientId = "{client_id}";
        static string clientSecret = "{client_secret}";
        static string tenantId = "{tenant_id}";
        static Uri authority = new Uri($"https://login.microsoftonline.com/{tenantId}");
        #endregion

        static async Task Main(string[] args)
        {
            // Create the Confidential Client object of MSAL
            confidentialClient = ConfidentialClientApplicationBuilder
                .Create(clientId)
                .WithAuthority(authority)
                .WithClientSecret(clientSecret)
                .Build();

            // Define the scopes (.default for app-only)
            var scopes = new string[] { "https://graph.microsoft.com/.default" };

            // Get the Access Token
            AuthenticationResult result = await confidentialClient.AcquireTokenForClient(scopes).ExecuteAsync();
            var accessToken = result.AccessToken;

            // Prepare the HttpClient object to use
            var client = new HttpClient();

            // 1) Register the app
            var appRegistrationRequest = new HttpRequestMessage(HttpMethod.Post,
                "https://graph.microsoft.com/v1.0/applications");

            appRegistrationRequest.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue(
                "Bearer", accessToken);
            
            var jsonApp = JsonSerializer.Serialize(new App
            {
                displayName = "PiaSys.Programmatically.Registered",
                requiredResourceAccess = new RequiredResourceAccess[] { 
                    new RequiredResourceAccess
                    {
                        resourceAppId = new Guid("00000003-0000-0000-c000-000000000000"),
                        resourceAccess = new ResourceAccess[]
                        {
                            new ResourceAccess
                            {
                                id = new Guid("4e46008b-f24c-477d-8fff-7bb4ec7aafe0"), // Group.ReadWrite.All
                                type = "Scope"
                            },
                            new ResourceAccess
                            {
                                id = new Guid("e1fe6dd8-ba31-4d61-89e7-88639da4683d"), // User.Read
                                type = "Scope"
                            }
                        }
                    }
                }
            });
            using (var jsonAppContent = new StringContent(jsonApp, Encoding.UTF8, "application/json"))
            {
                appRegistrationRequest.Content = jsonAppContent;

                using (var appRegistrationResponse = await client
                    .SendAsync(appRegistrationRequest)
                    .ConfigureAwait(false))
                {
                    appRegistrationResponse.EnsureSuccessStatusCode();

                    jsonApp = await appRegistrationResponse.Content.ReadAsStringAsync();
                }
            }

            var app = JsonSerializer.Deserialize<App>(jsonApp);
            Console.WriteLine(app.appId);

            // 2) Register the Service Principal for the app
            var appServicePrincipalRequest = new HttpRequestMessage(HttpMethod.Post,
                "https://graph.microsoft.com/v1.0/servicePrincipals");

            appServicePrincipalRequest.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue(
                "Bearer", accessToken);

            var jsonServicePrincipal = JsonSerializer.Serialize(new
            {
                appId = app.appId,
            });
            using (var jsonServicePrincipalContent = new StringContent(jsonServicePrincipal, Encoding.UTF8, "application/json"))
            {
                appServicePrincipalRequest.Content = jsonServicePrincipalContent;

                using (var appServicePrincipalResponse = await client
                    .SendAsync(appServicePrincipalRequest)
                    .ConfigureAwait(false))
                {
                    appServicePrincipalResponse.EnsureSuccessStatusCode();

                    jsonServicePrincipal = await appServicePrincipalResponse.Content.ReadAsStringAsync();
                }
            }

            var servicePrincipal = JsonSerializer.Deserialize<ServicePrincipal>(jsonServicePrincipal);

            // 3) Grant the permissions to the app
            var appGrantRequest = new HttpRequestMessage(HttpMethod.Post,
                "https://graph.microsoft.com/v1.0/oauth2PermissionGrants");

            appGrantRequest.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue(
                "Bearer", accessToken);

            var jsonGrant = JsonSerializer.Serialize(new
            {
                clientId = servicePrincipal.id,
                consentType = "AllPrincipals",
                // principalId = null,
                resourceId = "9fad82c0-df57-481d-bb8a-6e3a20e5489d", // Microsoft Graph
                scope = "Group.ReadWrite.All User.Read"
            });
            using (var jsonGrantContent = new StringContent(jsonGrant, Encoding.UTF8, "application/json"))
            {
                appGrantRequest.Content = jsonGrantContent;

                using (var appGrantResponse = await client
                    .SendAsync(appGrantRequest)
                    .ConfigureAwait(false))
                {
                    appGrantResponse.EnsureSuccessStatusCode();

                    jsonGrant = await appGrantResponse.Content.ReadAsStringAsync();
                }
            }

            Console.WriteLine(jsonGrant);
        }
    }
}
