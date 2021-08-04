using System;
using System.Collections.Generic;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using Microsoft.Extensions.Logging;
using Microsoft.Graph;

namespace MSGraphSDKNotifications
{
    public static class NotifyFunction
    {
        [Function("Notify")]
        public static async Task<HttpResponseData> Run([HttpTrigger(AuthorizationLevel.Function, "post")] HttpRequestData req,
            FunctionContext executionContext)
        {
            // Prepare the response object
            HttpResponseData response = null;

            // Get the logger
            var log = executionContext.GetLogger("NotifyFunction");

            log.LogInformation("Notify function triggered!");

            // Graph Subscription validation logic, if needed
            var querystring = QueryHelpers.ParseQuery(req.Url.Query);
            string validationToken = null;
            if (querystring.ContainsKey("validationToken"))
            {
                validationToken = querystring["validationToken"];
            }
            if (!string.IsNullOrEmpty(validationToken))
            {
                response = req.CreateResponse(HttpStatusCode.OK);
                response.WriteString(validationToken);

                return response;
            }
            else
            {
                // Create a GraphServiceClient instance with the defined TokenCredential
                var graphClient = GraphUtility.GetGraphClient();

                // Load the X509Certificate and add it to the subscription object
                var certificate = X509CertificateUtility.LoadCertificate(StoreName.My,
                    StoreLocation.CurrentUser,
                    Environment.GetEnvironmentVariable("CertificateThumbprint"));

                // Get the notification content
                var collection = graphClient.HttpProvider
                    .Serializer.DeserializeObject<ChangeNotificationCollection>(req.Body);

                var acceptedTenantIds = new List<Guid>();
                acceptedTenantIds.Add(new Guid(Environment.GetEnvironmentVariable("AZURE_TENANT_ID")));

                var acceptedClientIds = new List<Guid>();
                acceptedClientIds.Add(new Guid(Environment.GetEnvironmentVariable("AZURE_CLIENT_ID")));

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
            }

            response = req.CreateResponse(HttpStatusCode.OK);

            return response;
        }
    }
}
