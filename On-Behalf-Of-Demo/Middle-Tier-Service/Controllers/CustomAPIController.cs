using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace Middle_Tier_Service.Controllers
{
    public class CustomAPIController : ApiController
    {
        // GET: api/CustomAPI
        public async Task<IEnumerable<string>> Get(String spoResourceUri)
        {
            var apiResult = new List<String>();

            // Read the OAuth settings
            var tenantId = ConfigurationManager.AppSettings["ida:TenantId"];
            var clientId = ConfigurationManager.AppSettings["ida:ClientId"];
            var clientSecret = ConfigurationManager.AppSettings["ida:ClientSecret"];
            // var spoResourceUri = ConfigurationManager.AppSettings["SPOResourceURI"];

            // Save the current username in the response
            var currentUsername = System.Threading.Thread.CurrentPrincipal?.Identity?.Name;
            apiResult.Add(currentUsername);

            // Get an access token on-behalf-of to consume SPO from this API
            var tokenRequestUrl = $"https://login.microsoftonline.com/common/oauth2/token";

            using (var client = new HttpClient())
            {
                // Prepare the request parameters
                var content = new FormUrlEncodedContent(new[]
                {
                    new KeyValuePair<string, string>("grant_type", "urn:ietf:params:oauth:grant-type:jwt-bearer"),
                    new KeyValuePair<string, string>("client_id", clientId),
                    new KeyValuePair<string, string>("client_secret", clientSecret),
                    new KeyValuePair<string, string>("assertion", Request.Headers.Authorization.Parameter),
                    new KeyValuePair<string, string>("resource", spoResourceUri),
                    new KeyValuePair<string, string>("requested_token_use", "on_behalf_of"),
                });

                // Make the token request
                var result = await client.PostAsync(tokenRequestUrl, content);
                string jsonToken = await result.Content.ReadAsStringAsync();

                // Get back the OAuth 2.0 response
                var token = JsonConvert.DeserializeObject<OAuthTokenResponse>(jsonToken);

                // Retrieve and deserialize into a JWT token the Access Token
                var jwtAccessToken = new System.IdentityModel.Tokens.Jwt.JwtSecurityToken(token.AccessToken);

                // Make a request to SPO using the retrieved Access Token
                var spoJsonResponse = HttpHelper.MakeGetRequestForString(
                    $"{spoResourceUri}_api/web/CurrentUser?$select=Id,LoginName,Title", 
                    "application/json", 
                    token.AccessToken);

                apiResult.Add(spoJsonResponse);
            }

            // This API will simply use SPO in the back-end to get a list o site collections
            return (apiResult);
        }
    }
}
