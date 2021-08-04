using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.Graph;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;

namespace MSGraphSDK4Subscriptions
{
    public class NotifyFunction
    {
        [FunctionName("Notify")]
        public async Task<IActionResult> Notify(
            [HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("Notify function triggered!");

            // Graph Subscription validation logic, if needed
            string validationToken = req.Query["validationToken"];
            if (!string.IsNullOrEmpty(validationToken))
            {
                return new OkObjectResult(validationToken);
            }

            // Create a GraphServiceClient instance with the defined TokenCredential
            var graphClient = GraphUtility.GetGraphClient();

            // Load the X509Certificate and add it to the subscription object
            var certificate = X509CertificateUtility.LoadCertificate(StoreName.My,
                StoreLocation.CurrentUser,
                Environment.GetEnvironmentVariable("CertificateThumbprint"));

            // Get the notification content
            string notificationContent = await new StreamReader(req.Body).ReadToEndAsync();
            var collection = graphClient.HttpProvider.Serializer.DeserializeObject<ChangeNotificationCollection>(notificationContent);

            var acceptedTenantIds = new List<Guid>();
            acceptedTenantIds.Add(new Guid(Environment.GetEnvironmentVariable("AZURE_TENANT_ID")));

            var acceptedClientIds = new List<Guid>();
            acceptedTenantIds.Add(new Guid(Environment.GetEnvironmentVariable("AZURE_CLIENT_ID")));

            // Validate the tokens
            var areTokensValid = await collection.AreTokensValid(acceptedTenantIds, acceptedClientIds);
            foreach (var changeNotification in collection.Value)
            {
                // And decrypt the encryptedContent
                var actualNotificationItem = await changeNotification.EncryptedContent.DecryptAsync(
                    (id, thumbprint) => Task.FromResult(certificate));
                if (areTokensValid)
                {
                    // Show the decrypted object content
                    log.LogInformation($"Notification content: {actualNotificationItem}");
                }
            }

            return new OkResult();
        }
    }
}
