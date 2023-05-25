using Azure.Identity;
using Azure.Core;
using System.Net.Http.Headers;
using System.Text.Json;
using System.Text.Json.Serialization;

// Define the client credentials
var credential = new ClientSecretCredential(
    tenantId: "<tenant-id>",
    clientId: "<client-id>",
    clientSecret: "<client-secret>"
);

// Prepare the toke request
var tokenRequestContext = new TokenRequestContext(
    scopes: new[] { "https://graph.microsoft.com/.default" }
);

// Retrieve the access token
var accessToken = await credential.GetTokenAsync(tokenRequestContext);

// Consume the target API
var client = new HttpClient();
client.DefaultRequestHeaders.Authorization =
    new AuthenticationHeaderValue("Bearer", accessToken.Token);

// Prepare the initial request
var requestUrl = "https://graph.microsoft.com/v1.0/sites/getAllSites?$select=id,name,webUrl";

// Set the initial counter
var counter = 0;

// While we still have a request URL, keep making requests
while (requestUrl != null) {
    // Make the actual request
    var response = await client.GetAsync(requestUrl);

    // Deserialize the response
    var allSitesJson = await response.Content.ReadAsStringAsync();
    if (allSitesJson != null) {
        var allSites = JsonSerializer.Deserialize<AllSites>(allSitesJson, new JsonSerializerOptions {
                PropertyNameCaseInsensitive = true
            });

        // Browse the results
        if (allSites != null && allSites.Value != null)
        {
            foreach (var site in allSites.Value) {
                counter++;
                Console.WriteLine($"Site: {site.Name} ({site.Id})");
            }

            // Set the next request URL to the next link (page), if any
            requestUrl = allSites.NextLink;
        }
    }
}

Console.WriteLine($"You have {counter} sites in your tenant.");

record Site(string Id, string Name, string WebUrl);
class AllSites {
    public Site[] Value { get; set; }
    
    [JsonPropertyName("@odata.nextLink")]
    public string NextLink { get; set; }
}
