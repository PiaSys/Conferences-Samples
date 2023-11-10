using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
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

        // Configure the HTTP client
        services.AddHttpClient();
    })
    .ConfigureFunctionsWorkerDefaults()
    .Build();

host.Run();
