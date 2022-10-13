using Microsoft.Identity.Client;
using Microsoft.Graph;
using System.Net.Http.Headers;

Console.WriteLine("Welcome to the Microsoft Graph World!");

// Define the configuration variables
var clientId = "32893fbf-f8ba-414d-aa19-f674da7b8226";
var tenantId = "6c94075a-da0a-4c6a-8411-badf652e8b53";
var authority = $"https://login.microsoftonline.com/{tenantId}/";
var redirectUri = "http://localhost";
var scopes = new String[] {"User.Read", "User.Read.All", "Chat.Create", "Chat.ReadWrite"};

// Define the general settings for the sample app
var chatMembers = new String[] { 
    "paolo@piasysdev.onmicrosoft.com", 
    "guido.zambarda@piasysdev.onmicrosoft.com", 
    "cristian.civera@piasysdev.onmicrosoft.com" };

// Build the MSAL Public Client application to get delegated access tokens
IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
                .Create(clientId)
                .WithTenantId(tenantId)
                .WithAuthority(authority)
                .WithRedirectUri(redirectUri)
                .Build();

AuthenticationResult tokenResult = null;

// Try to see if we already have an account in the cache
var account = await publicClientApplication.GetAccountsAsync().ConfigureAwait(false);
try
{
    // Try to get the token from the tokens cache
    tokenResult = await publicClientApplication.AcquireTokenSilent(scopes, account.FirstOrDefault())
        .ExecuteAsync().ConfigureAwait(false);
}
catch (MsalUiRequiredException)
{
    // Try to get the token directly through AAD if it is not available in the tokens cache
    tokenResult = await publicClientApplication.AcquireTokenInteractive(scopes)
        .ExecuteAsync().ConfigureAwait(false);
}

// Output the Access Token for the sake of reading it with http://jwt.ms
var accessToken = tokenResult.AccessToken;
Console.WriteLine(accessToken);

// Create a new instance of the Microsoft Graph Client SDK for .NET
var graphClient = new GraphServiceClient(new DelegateAuthenticationProvider((requestMessage) => {
    requestMessage
        .Headers
        .Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

    return Task.CompletedTask;
}));

// Create a new chat group
var chat = new Chat
{
    ChatType = ChatType.Group,
    Members = new ChatMembersCollectionPage()
};

// Add members to the chat group
foreach (var upn in chatMembers)
{
    var user = await graphClient.Users[upn].Request().GetAsync();

    chat.Members.Add(new AadUserConversationMember
    {
        Roles = new List<String>()
            {
                "owner"
            },
        AdditionalData = new Dictionary<string, object>()
            {
                {"user@odata.bind", $"https://graph.microsoft.com/v1.0/users('{user.Id}')"}
            }
    });
}

// Send the chat group creation request
var createdChat = await graphClient.Chats
    .Request()
    .AddAsync(chat);

// Now create a chat message for the chat group
var chatMessage = new ChatMessage
{
    Body = new ItemBody
    {
        Content = "<h1>This is a chat message!</h1><p>This is a message sent to this chat using <a href='https://learn.microsoft.com/en-us/graph/sdks/sdks-overview'>Microsoft Graph SDK</a></p>",
        ContentType = BodyType.Html
    }
};

// And send the message to the chat group
await graphClient.Chats[createdChat.Id].Messages
    .Request()
    .AddAsync(chatMessage);

// **************************************
// Here you can see batching in action
// **************************************

// Now we are going to send two more messages in the same chat, using a batch request

// Create the first chat message for the chat group
var chatMessage01 = new ChatMessage
{
    Body = new ItemBody
    {
        Content = "<h1>This is chat message #01!</h1><p>This is the first message that we're going to send to the chat within a unique batch request!</p>",
        ContentType = BodyType.Html
    }
};

// Prepare the Request for the chat messages collection
var chatMessagesRequest01 = graphClient.Chats[createdChat.Id].Messages
    .Request().GetHttpRequestMessage();
chatMessagesRequest01.Method = HttpMethod.Post;
chatMessagesRequest01.Content = graphClient.HttpProvider.Serializer.SerializeAsJsonContent(chatMessage01);

// Now create the second chat message for the chat group
var chatMessage02 = new ChatMessage
{
    Body = new ItemBody
    {
        Content = "<h1>This is chat message #02!</h1><p>This is the first message that we're going to send to the chat within a unique batch request!</p>",
        ContentType = BodyType.Html
    }
};

// Prepare the Request for the chat messages collection
var chatMessagesRequest02 = graphClient.Chats[createdChat.Id].Messages
    .Request().GetHttpRequestMessage();
chatMessagesRequest02.Method = HttpMethod.Post;
chatMessagesRequest02.Content = graphClient.HttpProvider.Serializer.SerializeAsJsonContent(chatMessage02);

// Now Build the batch request content
var batchRequestContent = new BatchRequestContent();

// Using AddBatchRequestStep adds each request as a step with no specified order of execution
var addMessage01RequestId = batchRequestContent.AddBatchRequestStep(chatMessagesRequest01);
var addMessage02RequestId = batchRequestContent.AddBatchRequestStep(chatMessagesRequest02);

#region Ordered batching demo
// var addMessage02RequestId = Guid.NewGuid().ToString();
// batchRequestContent.AddBatchRequestStep(new BatchRequestStep(
//     addMessage02RequestId,
//     chatMessagesRequest02,
//     new List<string> {addMessage01RequestId }
// ));
#endregion

// And now invoke Microsoft Graph with one batch request
var batchResponse = await graphClient.Batch.Request().PostAsync(batchRequestContent);

// And finally deserialize the response, one batch item per time
try
{
    var createdChatMessage01 = await batchResponse
        .GetResponseByIdAsync<ChatMessage>(addMessage01RequestId);
    Console.WriteLine($"Message 01 posted with ID: {createdChatMessage01.Id}");

    var createdChatMessage02 = await batchResponse
        .GetResponseByIdAsync<ChatMessage>(addMessage02RequestId);
    Console.WriteLine($"Message 01 posted with ID: {createdChatMessage02.Id}");
}
catch (ServiceException ex)
{
    Console.WriteLine($"Add event failed: {ex.Error.Message}");
}
