using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Text.Json;
using System.Threading.Tasks;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using Microsoft.Extensions.Logging;
using Microsoft.Graph;

namespace MSGraphSDKNotifications
{
    public static class SubscribeFunction
    {
        [Function("Subscribe")]
        public static async Task<HttpResponseData> Run([HttpTrigger(AuthorizationLevel.Function, "post")] HttpRequestData req,
            FunctionContext executionContext)
        {
            // Prepare the response object
            HttpResponseData response = null;

            // Get the logger
            var log = executionContext.GetLogger("SubscribeFunction");

            log.LogInformation("Subscribe function triggered!");

            // Process the subscription request
            var request = await JsonSerializer.DeserializeAsync<SubscriptionRequest>(req.Body, 
                new JsonSerializerOptions { 
                    PropertyNameCaseInsensitive = true
                });

            // Create a GraphServiceClient instance with the defined TokenCredential
            var graphClient = GraphUtility.GetGraphClient();

            // Load the X509Certificate and add it to the subscription object
            var certificate = X509CertificateUtility.LoadCertificate(StoreName.My,
                StoreLocation.CurrentUser,
                Environment.GetEnvironmentVariable("CertificateThumbprint"));

            if (certificate == null)
            {
                var certificateError = "Failed to load certificate!";
                log.LogError(certificateError);

                response = req.CreateResponse(HttpStatusCode.InternalServerError);
                response.WriteString(certificateError);

                return response;
            }

            // Create a subscription
            var subscription = new Subscription
            {
                ChangeType = request.ChangeType,
                IncludeResourceData = true,
                NotificationUrl = $"https://{Environment.GetEnvironmentVariable("WEBSITE_HOSTNAME")}/api/notify?code={Environment.GetEnvironmentVariable("NotifyFunctionKey")}",
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
                log.LogInformation(responseMessage);

                response = req.CreateResponse(HttpStatusCode.OK);
                response.WriteString(responseMessage);

                return response;
            }
            catch (Exception ex)
            {
                log.LogError(ex.Message);

                response = req.CreateResponse(HttpStatusCode.InternalServerError);
                response.WriteString(ex.Message);

                return response;
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
