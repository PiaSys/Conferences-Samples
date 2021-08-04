using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Azure.Identity;
using Microsoft.Graph;
using System.Security.Cryptography.X509Certificates;

namespace MSGraphSDK4Subscriptions
{
    public class SubscribeFunction
    {
        [FunctionName("Subscribe")]
        public async Task<IActionResult> Subscribe(
            [HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("Subscribe function triggered!");

            // Process the subscription request
            string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
            var request = JsonConvert.DeserializeObject<SubscriptionRequest>(requestBody);

            // Create a GraphServiceClient instance with the defined TokenCredential
            var graphClient = GraphUtility.GetGraphClient();

            // Load the X509Certificate and add it to the subscription object
            var certificate = X509CertificateUtility.LoadCertificate(StoreName.My,
                StoreLocation.CurrentUser,
                Environment.GetEnvironmentVariable("CertificateThumbprint"));

            if (certificate == null)
            {
                log.LogError("Failed to load certificate!");
                return new StatusCodeResult(500);
            }

            // Create a subscription
            var subscription = new Subscription
            {
                ChangeType = request.ChangeType,
                IncludeResourceData = true,
                NotificationUrl = $"{Environment.GetEnvironmentVariable("WEBSITE_HOSTNAME")}/api/notify?code={Environment.GetEnvironmentVariable("NotifyFunctionKey")}",
                Resource = request.Resource,
                ExpirationDateTime = DateTime.UtcNow.AddMinutes(15),
                ClientState = request.ClientState,
                EncryptionCertificateId = !string.IsNullOrEmpty(certificate?.FriendlyName) ? certificate.FriendlyName : certificate?.Subject,
            };

            // Associate the X509Certificate to the subscription object
            subscription.AddPublicEncryptionCertificate(certificate);

            try
            {
                Subscription subscriptionResult = await graphClient.Subscriptions.Request().AddAsync(subscription);
                string responseMessage = $"Subscription successfully registered with ID: {subscriptionResult.Id}";
                return new OkObjectResult(responseMessage);
            }
            catch (Exception ex)
            {
                log.LogError(ex.Message);
                return new StatusCodeResult(500);
            }
        }
    }

    public class SubscriptionRequest
    {
        public string ChangeType { get; set; }

        public string Resource { get; set; }

        public string ClientState { get; set; }
    }
}
