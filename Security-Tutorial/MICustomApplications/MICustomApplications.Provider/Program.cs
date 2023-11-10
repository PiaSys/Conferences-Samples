using Microsoft.Azure.Functions.Worker.Extensions.OpenApi.Extensions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using MICustomApplications.Provider;
using System.Text.Json;
using System.Text.Json.Serialization;

var host = new HostBuilder()
    .ConfigureServices((context, services) =>
    {
        // Define global JSON serializer options
        services.Configure<JsonSerializerOptions>(options =>
        {
            options.AllowTrailingCommas = true;
            options.DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull;
            options.PropertyNamingPolicy = JsonNamingPolicy.CamelCase;
            options.PropertyNameCaseInsensitive = true;
        });
    })
    .ConfigureFunctionsWorkerDefaults((context, builder) =>
    {
        // Credits to Joonas Westlin: https://github.com/juunas11/IsolatedFunctionsAuthentication
        // I created my implementation starting from there, with some little touches (Application only, OBO flow, etc.)
        builder.UseWhen<FunctionAuthenticationMiddleware>(functionContext =>
        {
            // Only use the middleware if not related to Swagger or OpenApi
            return !functionContext.FunctionDefinition.Name.Contains("swagger", StringComparison.InvariantCultureIgnoreCase) &&
                !functionContext.FunctionDefinition.Name.Contains("openapi", StringComparison.InvariantCultureIgnoreCase);
        });
        builder.UseMiddleware<FunctionAuthorizationMiddleware>();
    })
    .ConfigureOpenApi()
    .Build();


host.Run();
