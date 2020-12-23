using Microsoft.Graph;
using Microsoft.Graph.Auth;
using Microsoft.Identity.Client;
using System;
using System.Threading.Tasks;

namespace MSGraphSDKDemo
{
    class Program
    {
        static IPublicClientApplication publicClient;
        static string clientId = "{client-id}";
        static string tenantId = "{tenant-id}";
        static Uri authority = new Uri($"https://login.microsoftonline.com/{tenantId}");
        static string[] graphScopes = new string[] { "User.Read.All", "Mail.Read", "Sites.Read.All" };

        static async Task Main(string[] args)
        {
            // Create the MSAL client object (public or confidential, depending on your context)
            publicClient = PublicClientApplicationBuilder
                .Create(clientId)
                .WithAuthority(authority)
                .WithRedirectUri("http://localhost")
                .Build();

            // Create an authentication provider by passing in a client application and graph scopes.
            InteractiveAuthenticationProvider authProvider = new InteractiveAuthenticationProvider(publicClient, graphScopes);

            // Create a new instance of GraphServiceClient with the authentication provider.
            GraphServiceClient graphClient = new GraphServiceClient(authProvider);

            // *****************************************
            // Requesting a single object like "me"
            // *****************************************

            var me = await graphClient.Me.Request().GetAsync();
            Console.WriteLine(me.DisplayName);

            // *****************************************
            // Querying list of data with with Top/Skip
            // *****************************************

            int counter = 0;
            var users = await graphClient.Users.Request().Select("Id,DisplayName,UserPrincipalName").OrderBy("DisplayName").Top(20).GetAsync();

            Console.WriteLine(users.Count);

            foreach (var user in users)
            {
                counter++;
                Console.WriteLine($"{counter:000} | {user.Id} => {user.DisplayName} <{user.UserPrincipalName}>");
            }

            // *************************************
            // Querying list of data with paging
            // *************************************

            counter = 0;
            var messages = await graphClient.Me.Messages.Request().Select("Id,Subject").OrderBy("Subject").GetAsync();

            var messagesIterator = PageIterator<Message>.CreatePageIterator(graphClient, messages, (message) => {
                counter++;
                Console.WriteLine($"{counter:000} | {message.Id} => {message.Subject}");
                return counter < 2000; // Stop after 2000 messages
            });

            await messagesIterator.IterateAsync();

            // **************************
            // Working with batching
            // **************************

            // Define a couple of request
            var userRequest = graphClient.Me.Request();
            var messagesRequest = graphClient.Me.Messages.Request().Select("Id,Subject").OrderBy("Subject").Top(20);

            // Build a batch
            var batchRequestContent = new BatchRequestContent();

            // Using AddBatchRequestStep adds each request as a step
            // with no specified order of execution
            var userRequestId = batchRequestContent.AddBatchRequestStep(userRequest);
            var messagesRequestId = batchRequestContent.AddBatchRequestStep(messagesRequest);

            // Process the actual batch request
            var returnedResponse = await graphClient.Batch.Request().PostAsync(batchRequestContent);

            // Try to get the responses
            try
            {
                var user = await returnedResponse
                    .GetResponseByIdAsync<User>(userRequestId);
                Console.WriteLine($"Hello {user.DisplayName}!");
            }
            catch (ServiceException ex)
            {
                Console.WriteLine($"Get user failed: {ex.Error.Message}");
            }

            try
            {
                var messagesViaBatch = await returnedResponse
                    .GetResponseByIdAsync<UserMessagesCollectionResponse>(messagesRequestId);

                counter = 0;
                foreach (var message in messagesViaBatch.Value)
                {
                    counter++;
                    Console.WriteLine($"{counter:000} | {message.Id} => {message.Subject}");
                }
            }
            catch (ServiceException ex)
            {
                Console.WriteLine($"Get messages failed: {ex.Error.Message}");
            }
        }
    }
}
