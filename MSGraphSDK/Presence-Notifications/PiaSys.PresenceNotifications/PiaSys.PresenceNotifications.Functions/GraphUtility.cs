using Azure.Identity;
using Microsoft.Graph;
using System;
using System.Collections.Generic;
using System.Text;

namespace PiaSys.PresenceNotifications.Functions
{
    internal static class GraphUtility
    {
        internal static GraphServiceClient GetGraphClient()
        {
            // Define the permission scopes that you need
            string[] scopes = { ".default" };

            // And a TokenCredential implementation
            var azureCredential = new DefaultAzureCredential();

            // Create a GraphServiceClient instance with the defined TokenCredential
            var graphClient = new GraphServiceClient(azureCredential, scopes);

            return graphClient;
        }
    }
}
