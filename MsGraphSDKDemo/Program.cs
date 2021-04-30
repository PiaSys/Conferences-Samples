using Microsoft.Graph;
using Microsoft.Graph.Auth;
using Microsoft.Identity.Client;
using System;
using System.Collections.Generic;
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

            await ManageSPOData(graphClient);
        }

        private static async Task ManageSPOData(GraphServiceClient graphClient)
        {
            // Retrieve the ID of the target list
            var listsQuery = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                .Lists
                .Request()
                .Filter("DisplayName eq 'Sample Data'")
                .Select("Id")
                .GetAsync();

            if (listsQuery != null && listsQuery.Count > 0)
            {
                var sampleDataId = listsQuery[0].Id;

                // Read an item
                var item = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                    .Lists[sampleDataId]
                    .Items["1"]
                    .Request()
                    .GetAsync();

                // Access item metadata fields
                Console.WriteLine($"Title: {item.Fields.AdditionalData["Title"]}");

                Console.WriteLine($"Description: {GetListItemValue<string>(item, "Description")}");
                Console.WriteLine($"Enabled: {GetListItemValue<bool>(item, "Enabled")}");
                Console.WriteLine($"ExpireDateTime: {GetListItemValue<DateTime>(item, "ExpireDateTime")}");

                // Create a new item to add
                Wait();
                var newItem = new ListItem
                {
                    Fields = new FieldValueSet
                    {
                        AdditionalData = new Dictionary<string, object>()
                        {
                            {"Title", "New Item"},
                            {"Description", "Description of the new item"},
                            {"Owner", "paolo@piasysdev.onmicrosoft.com"},
                            {"Counter", 200},
                            {"Enabled", true},
                            {"ExpireDateTime", DateTime.Now.AddDays(60)},
                            {"Status", "Suspended"},
                            {"md856ca9bed5439c98683de78ea0cd09", "-1;#.NET Core|b5b5795a-5b9b-4c3d-9add-8f56e0e45a7c" }
                        }
                    }
                };

                // Add a new item to the collection of items of the "Sample Data" list
                newItem = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                    .Lists[sampleDataId]
                    .Items
                    .Request()
                    .AddAsync(newItem);

                Console.WriteLine($"Added new item with ID: {newItem.Id}");

                // Update the new item
                Wait();
                var updatedItem = new ListItem
                {
                    Fields = new FieldValueSet
                    {
                        AdditionalData = new Dictionary<string, object>()
                        {
                            {"Title", $"{newItem.Fields.AdditionalData["Title"]} - Updated"},
                            {"ExpireDateTime", DateTime.Now.AddDays(90)},
                        }
                    }
                };

                // Update the item in the "Sample Data" list
                updatedItem = await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                    .Lists[sampleDataId]
                    .Items[newItem.Id]
                    .Request()
                    .UpdateAsync(updatedItem);

                // Delete the item from the "Sample Data" list
                Wait();
                await graphClient.Sites.GetByPath("sites/MSGraphSDKDemo", "piasysdev.sharepoint.com")
                    .Lists[sampleDataId]
                    .Items[newItem.Id]
                    .Request()
                    .DeleteAsync();
            }
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

        private static void Wait()
        {
            Console.WriteLine("Press ENTER to continue ...");
            Console.ReadLine();
        }

        private static TResult GetListItemValue<TResult>(ListItem item, string fieldName)
        {
            if (item == null)
            {
                throw new ArgumentNullException(nameof(item));
            }

            switch (Type.GetTypeCode(typeof(TResult)))
            {
                case TypeCode.DateTime:
                    return item.Fields.AdditionalData.ContainsKey(fieldName) ?
                        (TResult)((object)(DateTime.Parse((string)item.Fields.AdditionalData[fieldName]))):
                        default(TResult);
                default:
                    return item.Fields.AdditionalData.ContainsKey(fieldName) ?
                        (TResult)item.Fields.AdditionalData[fieldName] :
                        default(TResult);
            }
        }
    }
}
