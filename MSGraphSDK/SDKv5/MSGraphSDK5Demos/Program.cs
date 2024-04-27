using Azure.Identity;
using Microsoft.Graph;
using Microsoft.Graph.Models;

#region Microsoft Graph initialization code

// Define the delegate permission scopes for the current security context
string[] scopes = new string[] { "User.Read", "User.Read.All", "Mail.Read" };

// Build a ClientCredential object with Azure.Identity
var interactiveBrowserCredential = new InteractiveBrowserCredential(new InteractiveBrowserCredentialOptions()
{
    TenantId = "6c94075a-da0a-4c6a-8411-badf652e8b53",
    ClientId = "9205c8c1-ff5d-443d-a1a4-2279cbd62dc7",
    RedirectUri = new Uri("http://localhost")
});

// Build a Microsoft Graph SDK Client instance
var graphServiceClient = new GraphServiceClient(interactiveBrowserCredential, scopes);

#endregion

#region Query the current user

// Read the current user's display name
Console.WriteLine("=> Current User Query");
var me = await graphServiceClient.Me.GetAsync();
Console.WriteLine(me.DisplayName);
Console.ReadLine();

#endregion

#region Query the whole list of users

// Query the whole list of users
Console.WriteLine("=> Simple Query");
var users = await graphServiceClient.Users.GetAsync();

foreach (var user in users.Value)
{
    Console.WriteLine(user.DisplayName);
}
Console.ReadLine();

#endregion

#region Query advanced

// Query the whole list of users with select, filters, top, custom sorting, and custom headers
Console.WriteLine("=> Advanced Query");
users = await graphServiceClient.Users.GetAsync(requestConfig =>
    {
        requestConfig.QueryParameters.Top = 10;
        requestConfig.QueryParameters.Select = new string[] { "id", "userPrincipalName", "displayName" };
        requestConfig.QueryParameters.Filter = "endswith(mail,'@sharepoint-camp.com')";
        requestConfig.QueryParameters.Orderby = new string[] { "displayName" };
        requestConfig.QueryParameters.Count = true;
        requestConfig.Headers.Add("ConsistencyLevel", "eventual");
    });

foreach (var user in users.Value)
{
    Console.WriteLine(user.DisplayName);
}
Console.ReadLine();

#endregion

#region Query with paging

// Paging users
Console.WriteLine("=> Query with Paging");
users = await graphServiceClient.Users.GetAsync(requestConfig =>
{
    requestConfig.QueryParameters.Top = 20;
    requestConfig.QueryParameters.Select = new string[] { "id", "userPrincipalName", "displayName" };
});

var pageIterator = PageIterator<User, UserCollectionResponse>
    .CreatePageIterator(
        graphServiceClient,
        users,
        // Callback executed for each item in the collection
        (user) =>
        {
            Console.WriteLine(user.DisplayName);
            return true;
        },
        // Used to configure subsequent page requests
        (requestConfig) =>
        {
            // Re-add the header to subsequent requests
            requestConfig.Headers.Add("ConsistencyLevel", "eventual");
            return requestConfig;
        });

await pageIterator.IterateAsync();

Console.ReadLine();

#endregion

#region Batching

// Batching
Console.WriteLine("=> Batching");

// Define a request for the current user
var meRequest = graphServiceClient.Me.ToGetRequestInformation();

// Define a request for the messages of the current user
var messagesRequest = graphServiceClient.Me.Messages
    .ToGetRequestInformation(requestConfig =>
    {
        requestConfig.QueryParameters.Top = 10;
        requestConfig.QueryParameters.Select = new string[] { "id", "subject" };
    });

// Build the batch request
var batchRequestContent = new BatchRequestContentCollection(graphServiceClient);
var meRequestId = await batchRequestContent
    .AddBatchRequestStepAsync(meRequest);
var messagesRequestId = await batchRequestContent
    .AddBatchRequestStepAsync(messagesRequest);

// Execute the batch request
var returnedResponse = await graphServiceClient.Batch.PostAsync(batchRequestContent);

// Process the response to the me request
try
{
    var user = await returnedResponse
        .GetResponseByIdAsync<User>(meRequestId);
    Console.WriteLine($"Your name is: {user.DisplayName}!");
}
catch (Exception ex)
{
    Console.WriteLine($"Get user failed: {ex.Message}");
}

try
{
    var messages = await returnedResponse
        .GetResponseByIdAsync<EventCollectionResponse>(messagesRequestId);
    Console.WriteLine(
        $"I just retrieved {messages.Value?.Count} messages from your inbox. Here they are.");
    foreach (var message in messages.Value)
    {
        Console.WriteLine(message.Subject);
    }
}
catch (Exception ex)
{
    Console.WriteLine($"Get messages failed: {ex.Message}");
}

#endregion
