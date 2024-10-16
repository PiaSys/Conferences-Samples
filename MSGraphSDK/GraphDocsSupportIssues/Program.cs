using Microsoft.Identity.Client;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using GraphDocsSupportIssues;
using Microsoft.Kiota.Abstractions.Authentication;
using Microsoft.Graph;
using Microsoft.Graph.Models;

// Create a configuration object from appsettings.json
var configuration = new ConfigurationBuilder()
    .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
    .AddUserSecrets<Program>()
    .Build();

// Create a service collection and register the configuration and settings
var services = new ServiceCollection();
services.AddSingleton<IConfiguration>(configuration);
services.Configure<EntraIdSettings>(configuration.GetSection("EntraId"));

// Build the service provider and get the settings
var serviceProvider = services.BuildServiceProvider();
var settings = serviceProvider.GetRequiredService<IOptions<EntraIdSettings>>().Value;

var authority = $"https://login.microsoftonline.com/{settings.TenantId}";
string[] scopes = new[] { "Files.ReadWrite.All" };

IPublicClientApplication app = PublicClientApplicationBuilder.Create(settings.ClientId)
            .WithAuthority(new Uri(authority))
            .WithDefaultRedirectUri()
            .Build();

AuthenticationResult result;

try
{
    var accounts = await app.GetAccountsAsync();
    // Try to acquire an access token from the cache. If device code is required, Exception will be thrown.
    result = await app.AcquireTokenSilent(scopes, accounts.FirstOrDefault()).ExecuteAsync();
}
catch (MsalUiRequiredException)
{
    result = await app.AcquireTokenWithDeviceCode(scopes, deviceCodeResult =>
    {
        // This will print the message on the console which tells the user where to go sign-in using
        // a separate browser and the code to enter once they sign in.
        // The AcquireTokenWithDeviceCode() method will poll the server after firing this
        // device code callback to look for the successful login of the user via that browser.
        // This background polling (whose interval and timeout data is also provided as fields in the
        // deviceCodeCallback class) will occur until:
        // * The user has successfully logged in via browser and entered the proper code
        // * The timeout specified by the server for the lifetime of this code (typically ~15 minutes) has been reached
        // * The developing application calls the Cancel() method on a CancellationToken sent into the method.
        //   If this occurs, an OperationCanceledException will be thrown (see catch below for more details).

        // Write the Device Code in the Output window
        System.Diagnostics.Process.Start(
            new System.Diagnostics.ProcessStartInfo
            {
                FileName = $"PowerShell.exe",
                Arguments = $"-Command \"'{deviceCodeResult.UserCode}' | clip\"",
                UseShellExecute = true,
                WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden
            });

        // Start the browser to input the Device Code
        System.Diagnostics.Process.Start(
            new System.Diagnostics.ProcessStartInfo
            {
                FileName = deviceCodeResult.VerificationUrl.ToString(),
                UseShellExecute = true
            });

        Console.WriteLine(deviceCodeResult.Message);

        return Task.FromResult(0);
    }).ExecuteAsync();
}

if (result != null)
{
    Console.WriteLine(result.AccessToken);

    try
    {
        var accessTokenProvider = new BaseBearerTokenAuthenticationProvider(new TokenProvider(result.AccessToken));
        var graphServiceClient = new GraphServiceClient(accessTokenProvider);

        // Read the file into a stream
        using var fileStream = new FileStream(@"..\..\..\Duomo-Milano.jpg", FileMode.Open);

        // Get the path to the OneDrive folder
        string oneDrivePath = "Temp/Duomo-Milano.jpg";

        // Upload the file
        var drive = await graphServiceClient.Me.Drive.GetAsync();
        var uploadedFile = await graphServiceClient.Drives[drive?.Id]
                                        .Items["root"]
                                        .ItemWithPath(oneDrivePath)
                                        .Content
                                        .PutAsync(fileStream);

        Console.WriteLine($"Done!");
    }
    catch (ServiceException e)
    {
        Console.WriteLine("We could not retrieve the user's list: " + $"{e}");
    }
}


public class TokenProvider : IAccessTokenProvider
{
    private string _accessToken;

    public TokenProvider(string token)
    {
        _accessToken = token;
    }

    public Task<string> GetAuthorizationTokenAsync(Uri uri,
            Dictionary<string,
            object> additionalAuthenticationContext = default,
            CancellationToken cancellationToken = default)
    {
        var token = _accessToken;
        //get the token and return it in your own way
        return Task.FromResult(token);
    }
    public AllowedHostsValidator AllowedHostsValidator { get; }
}
        