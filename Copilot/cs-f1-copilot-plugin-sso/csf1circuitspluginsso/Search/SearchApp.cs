using Microsoft.Bot.Builder;
using Microsoft.Bot.Builder.Teams;
using Microsoft.Bot.Schema;
using Microsoft.Bot.Schema.Teams;
using AdaptiveCards;
using Newtonsoft.Json.Linq;
using Microsoft.Bot.Connector.Authentication;
using Microsoft.AspNetCore.Components.Server.Circuits;
using Models = csf1circuitspluginsso.Models;

namespace csf1circuitspluginsso.Search;

public class SearchApp(IConfiguration configuration) : TeamsActivityHandler
{
    private readonly string connectionName = configuration["CONNECTION_NAME"];
    private readonly string _circuitsFilePath = Path.Combine(".", "Resources", "data", "circuits.csv");

    // Search
    protected override async Task<MessagingExtensionResponse> OnTeamsMessagingExtensionQueryAsync(ITurnContext<IInvokeActivity> turnContext, MessagingExtensionQuery query, CancellationToken cancellationToken)
    {
        // see if we have a token for the user
        var userTokenClient = turnContext.TurnState.Get<UserTokenClient>();
        var tokenResponse = await GetToken(userTokenClient, query.State, turnContext.Activity.From.Id, turnContext.Activity.ChannelId, connectionName, cancellationToken);

        // check to see if a token was returned from the token service
        if (!HasToken(tokenResponse))
        {
            // no token returned so ask the user to sign in and consent to the required permissions
            return await CreateAuthResponse(userTokenClient, connectionName, (Activity)turnContext.Activity, cancellationToken);
        }

        // Read the circuits6
        var circuits = ReadCircuits(_circuitsFilePath);

        // Parse the search parameters
        var searchQuery = (query?.Parameters.Count == 1 && query?.Parameters[0].Name == "name") ?
            new Models.SearchQuery[] {
                new Models.SearchQuery {
                    SearchField = "name",
                    SearchValue = query?.Parameters[0].Value.ToString()
                }
            } :
            query?.Parameters.Select(p => {
                return new Models.SearchQuery
                {
                    SearchField = p.Name,
                    SearchValue = p.Value.ToString()
                };
            }).ToArray();

        var results = SearchCircuits(circuits, searchQuery);

        var attachments = results.Select(c =>
        {
            var previewCard = new ThumbnailCard { 
                Title = c.Name,
                Subtitle = $"{c.Location}, {c.Country}",
            };

            var attachment = new MessagingExtensionAttachment
            {
                ContentType = AdaptiveCard.ContentType,
                Content = previewCard,
                Preview = previewCard.ToAttachment()
            };

            return attachment;
        }).ToList();

        return new MessagingExtensionResponse
        {
            ComposeExtension = new MessagingExtensionResult
            {
                Type = "result",
                AttachmentLayout = "list",
                Attachments = attachments
            }
        };
    }

    #region Authentication helpers

    private static async Task<TokenResponse> GetToken(UserTokenClient userTokenClient, string state, string userId, string channelId, string connectionName, CancellationToken cancellationToken)
    {
        var magicCode = string.Empty;

        if (!string.IsNullOrEmpty(state))
        {
            if (int.TryParse(state, out var parsed))
            {
                magicCode = parsed.ToString();
            }
        }

        return await userTokenClient.GetUserTokenAsync(userId, connectionName, channelId, magicCode, cancellationToken);
    }

    private static bool HasToken(TokenResponse tokenResponse)
    {
        return tokenResponse != null && !string.IsNullOrEmpty(tokenResponse.Token);
    }

    private static async Task<MessagingExtensionResponse> CreateAuthResponse(UserTokenClient userTokenClient, string connectionName, Activity activity, CancellationToken cancellationToken)
    {
        // get the sign in resource
        var resource = await userTokenClient.GetSignInResourceAsync(connectionName, activity, null, cancellationToken);

        return new MessagingExtensionResponse
        {
            ComposeExtension = new MessagingExtensionResult
            {
                Type = "auth",
                SuggestedActions = new MessagingExtensionSuggestedAction
                {
                    Actions =
                    [
                        new() {
                            Type = ActionTypes.OpenUrl,
                            Value = resource.SignInLink,
                            Title = "Sign In",
                        },
                    ]
                }
            }
        };
    }

    private static async Task<AdaptiveCardInvokeResponse> CreateOAuthCardResponse(UserTokenClient userTokenClient, string connectionName, Activity activity, CancellationToken cancellationToken)
    {
        // get the sign in resource
        var resource = await userTokenClient.GetSignInResourceAsync(connectionName, activity, null, cancellationToken);

        return new AdaptiveCardInvokeResponse
        {
            StatusCode = 401,
            Type = $"{Activity.ContentType}.loginRequest",
            Value = JObject.FromObject(
                new OAuthCard
                {
                    Buttons = [
                        new() {
                            Title = "Sign In",
                            Type = ActionTypes.Signin,
                            Value = resource.SignInLink
                        }
                    ],
                    Text = "Please sign in to continue.",
                    ConnectionName = connectionName
                }
            )
        };
    }

    private static async Task SignOut(UserTokenClient userTokenClient, string userId, string channelId, string connectionName, CancellationToken cancellationToken)
    {
        await userTokenClient.SignOutUserAsync(userId, connectionName, channelId, cancellationToken);
    }

    #endregion

    #region Circuits handling custom logic

    static List<Models.Circuit> ReadCircuits(string filePath)
    {
        var list = new List<Models.Circuit>();
        using (var reader = new StreamReader(filePath))
        {
            reader.ReadLine(); // Skip the header row if your CSV has one
            while (!reader.EndOfStream)
            {
                var line = reader.ReadLine();

                var values = line.Split(',');

                try
                {
                    var circuit = new Models.Circuit
                    {
                        CircuitId = int.Parse(values[0] ?? "0"),
                        CircuitRef = StripQuotes(values[1]),
                        Name = StripQuotes(values[2]),
                        Location = StripQuotes(values[3]),
                        Country = StripQuotes(values[4]),
                        Lat = double.Parse(values[5] ?? "0"),
                        Lng = double.Parse(values[6] ?? "0"),
                        Alt = values[7] == @"\N" ? 0 : double.Parse(values[7] ?? "0"),
                        Url = StripQuotes(values[8]),
                    };

                    list.Add(circuit);
                }
                catch (Exception ex) 
                { 
                    // Skip the error
                    var exMessage = ex.Message;
                }
            }
        }
        return list;
    }

    static string StripQuotes(string quotedString)
    {
        if (!string.IsNullOrEmpty(quotedString))
        {
            return quotedString.Replace("\"", "");
        }
        else
        { 
            return quotedString; 
        }
    }

    static List<Models.Circuit> SearchCircuits(List<Models.Circuit> circuits, Models.SearchQuery[] queries)
    {
        var result = new List<Models.Circuit>();

        foreach (var circuit in circuits)
        {
            var matching = false;
            var circuitType = circuit.GetType();

            foreach (var query in queries)
            {
                // Read the property via reflection, if any
                var property = circuitType.GetProperty(query.SearchField,
                    System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.IgnoreCase);
                if (property == null) continue;

                // Read the property value
                var propertyValue = property.GetValue(circuit);

                if (propertyValue.ToString() == query.SearchValue)
                {
                    result.Add(circuit);
                    matching = true;
                    break;
                }
            }

            if (matching) continue;
        }

        return result;
    }

    #endregion
}