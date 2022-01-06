using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using Microsoft.Extensions.Logging;
using Microsoft.Graph;

namespace PiaSys.PresenceNotifications.Functions
{
    public static class NotifyPresence
    {
        [Function("NotifyPresence")]
        public static async Task<HttpResponseData> RunAsync([HttpTrigger(AuthorizationLevel.Function, "get", "post")] HttpRequestData req,
            FunctionContext executionContext)
        {
            // Log function invocation
            var logger = executionContext.GetLogger("NotifyPresence");
            logger.LogInformation("NotifyPresence function triggered.");

            // Prepare the response
            var response = req.CreateResponse(HttpStatusCode.OK);

            // Verify it is a validation request
            string validationToken = executionContext.BindingContext.BindingData.ContainsKey("validationToken") ?
                executionContext.BindingContext.BindingData["validationToken"].ToString() : null;
            if (!string.IsNullOrEmpty(validationToken))
            {
                logger.LogInformation($"Received Validation Token: {validationToken}");

                response.StatusCode = HttpStatusCode.OK;
                response.Headers.Add("Content-Type", "text/plain; charset=utf-8");
                response.WriteString(validationToken);
                return response;
            }

            try
            {
                // Otherwise, process the notification
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
                acceptedClientIds.Add(new Guid(Environment.GetEnvironmentVariable("AZURE_CLIENT_ID")));

                // Validate the tokens
                logger.LogInformation($"Validating tokens ...");
                var areTokensValid = await collection.AreTokensValid(acceptedTenantIds, acceptedClientIds);
                foreach (var changeNotification in collection.Value)
                {
                    // And decrypt the encryptedContent
                    var actualNotificationItem = await changeNotification.EncryptedContent.DecryptAsync(
                        (id, thumbprint) => Task.FromResult(certificate));
                    if (areTokensValid)
                    {
                        // Show the decrypted object content
                        logger.LogInformation($"Notification content: {actualNotificationItem}");
                    }
                }

                response.StatusCode = HttpStatusCode.OK;
            }
            catch (Exception ex)
            {
                response.StatusCode = HttpStatusCode.InternalServerError;
                response.Headers.Add("Content-Type", "text/plain; charset=utf-8");
                response.WriteString(ex.Message);
            }

            return response;
        }
    }
}
