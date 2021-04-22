using Microsoft.Graph;
using Microsoft.Graph.Auth;
using Microsoft.Identity.Client;
using System;
using System.Threading.Tasks;

namespace MsGraphSDKDemo
{
    class Program
    {
        const string clientId = "6f72a3da-3407-4d6e-9cc1-0c499fc624af";
        const string tenantId = "6c94075a-da0a-4c6a-8411-badf652e8b53";

        static async Task Main(string[] args)
        {
            // Create and configure MSAL public client application
            IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
                .Create(clientId)
                .WithTenantId(tenantId)
                .Build();

            // Create an authentication provider for public credentials flow with device code
            DeviceCodeProvider authProvider = new DeviceCodeProvider(publicClientApplication);

            #region List of supported authentication providers
            // - AuthorizationCodeProvider
            // - DeviceCodeProvider
            // - IntegratedWindowsAuthenticationProvider
            // - InteractiveAuthenticationProvider
            // - OnBehalfOfProvider
            // - UsernamePasswordProvider
            #endregion

            // Create a new instance of the GraphServiceClient based on the just created authentication provider
            var graphClient = new GraphServiceClient(authProvider);

            // await SimpleQueries(graphClient);
            await Pagination(graphClient);
        }

        private static async Task Pagination(GraphServiceClient graphClient)
        {
            // ******************************************
            // Querying list of data with with Top/Skip
            // ******************************************

            // Get the top 20 users
            var users = await graphClient.Users.Request().Select("Id,DisplayName,UserPrincipalName").OrderBy("DisplayName").Top(20).GetAsync();
            DisplayUsers(users);
            Wait();

            // Get the top 20 messages
            int counter = 0;
            var messages = await graphClient.Me.Messages.Request().Select("Id,Subject").Top(20).GetAsync();
            counter = DisplayMessages(messages, counter);
            Wait();

            // Get the second page
            messages = await graphClient.Me.Messages.Request().Select("Id,Subject").Top(20).Skip(20).GetAsync();
            counter = DisplayMessages(messages, counter);
            Wait();

            // Get the third page
            messages = await graphClient.Me.Messages.Request().Select("Id,Subject").Top(20).Skip(40).GetAsync();
            counter = DisplayMessages(messages, counter);
            Wait();

            // You can even create a loop ...

            // ******************************************
            // Querying list of data with smart paging
            // ******************************************

            counter = 0;
            messages = await graphClient.Me.Messages.Request().Select("Id,Subject").OrderBy("Subject").GetAsync();

            var messagesIterator = PageIterator<Message>.CreatePageIterator(graphClient, messages, (message) =>
            {
                counter++;
                Console.WriteLine($"{counter:000} | {message.Id} => {message.Subject}");
                return counter < 100; // Stop after 100 messages
            });

            await messagesIterator.IterateAsync();
            Wait();

            // ******************************************
            // Querying list of data with smart paging
            // and using pause/resume of the iterator
            // ******************************************

            int globalCounter = 0;
            messages = await graphClient.Me.Messages.Request().Select("Id,Subject").OrderBy("Subject").GetAsync();

            messagesIterator = PageIterator<Message>.CreatePageIterator(graphClient, messages, (message) =>
            {
                globalCounter++;
                counter++;
                Console.WriteLine($"{globalCounter:00000} | {message.Id} => {message.Subject}");
                return counter < 1000; // Pause after a chunk of 1000 messages
            });

            while (messagesIterator.State != PagingState.Complete)
            {
                // Reset counter
                counter = 0;

                if (messagesIterator.State == PagingState.NotStarted)
                {
                    await messagesIterator.IterateAsync();
                }
                else if (messagesIterator.State != PagingState.Complete)
                {
                    await messagesIterator.ResumeAsync();
                }

                Console.WriteLine("Here we can do something else with the current chunk of items...\nPress ENTER to resume paging.");
                Console.ReadLine();
            }
        }

        private static void Wait()
        {
            Console.WriteLine("Press ENTER to continue ...");
            Console.ReadLine();
        }

        private static void DisplayUsers(IGraphServiceUsersCollectionPage users)
        {
            Console.WriteLine(users.Count);

            int counter = 0;
            foreach (var user in users)
            {
                counter++;
                Console.WriteLine($"{counter:000} | {user.Id} => {user.DisplayName} <{user.UserPrincipalName}>");
            }
        }

        private static int DisplayMessages(IUserMessagesCollectionPage messages, int counter)
        {
            Console.WriteLine(messages.Count);

            foreach (var message in messages)
            {
                counter++;
                Console.WriteLine($"{counter:000}  | {message.Id} => {message.Subject}");
            }

            return counter;
        }

        private static async Task SimpleQueries(GraphServiceClient graphClient)
        {
            // Consume SPO via Microsoft Graph SDK
            var lists = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                .Lists
                .Request()
                .GetAsync();

            foreach (var l in lists)
            {
                Console.WriteLine(l.DisplayName);
            }

            var documents = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                .Lists[lists[0].Id]
                .Request()
                .GetAsync();

            Console.WriteLine(documents.DisplayName);

            var docs = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                .Lists[lists[0].Id]
                .Items
                .Request()
                .Header("Prefer", "HonorNonIndexedQueriesWarningMayFailRandomly")
                .Expand("fields")
                .Filter("fields/Title eq 'Sample Document 01'")
                .GetAsync();

            if (docs.Count > 0)
            {
                Console.WriteLine(docs[0].Fields.AdditionalData["Title"]);
            }
        }
    }
}
