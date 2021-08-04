using Azure.Identity;
using Microsoft.Graph;
using System;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;

namespace MSGraphSDK4Subscriber
{
    class Program
    {
        static async Task Main(string[] args)
        {
            // Create a GraphServiceClient instance with the defined TokenCredential
            string[] scopes = { ".default" };

            // And a TokenCredential implementation
            var azureCredential = new DefaultAzureCredential();

            // Create a GraphServiceClient instance with the defined TokenCredential
            var graphClient = new GraphServiceClient(azureCredential, scopes);

            // Load the X509Certificate and add it to the subscription object
            var certificate = X509CertificateUtility.LoadCertificate(StoreName.My,
                StoreLocation.CurrentUser,
                Environment.GetEnvironmentVariable("CertificateThumbprint"));

            if (certificate == null)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("Failed to load certificate!");
                return;
            }

            // Create a subscription
            var subscription = new Subscription
            {
                ChangeType = "created",
                IncludeResourceData = true,
                NotificationUrl = $"https://piasystechbitesgraphsubdemo.azurewebsites.net/api/Notify?code={Environment.GetEnvironmentVariable("NotifyFunctionKey")}",
                Resource = "/teams/getAllMessages",
                ExpirationDateTime = DateTime.UtcNow.AddMinutes(15),
                ClientState = "something",
                EncryptionCertificateId = !string.IsNullOrEmpty(certificate?.FriendlyName) ? certificate.FriendlyName : certificate?.Subject,
            };

            // Associate the X509Certificate to the subscription object
            subscription.AddPublicEncryptionCertificate(certificate);

            try
            {
                Subscription subscriptionResult = await graphClient.Subscriptions.Request().AddAsync(subscription);
                string responseMessage = $"Subscription successfully registered with ID: {subscriptionResult.Id}";
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine(responseMessage);
            }
            catch (Exception ex)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(ex.Message);
                return;
            }
        }
    }
}
