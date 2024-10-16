using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.Identity.Web;
using Microsoft.Identity.Web.Resource;
using Microsoft.OpenApi.Models;
using System.Net.Http.Headers;
using WebAPISecuredMinimal;

const string allowAllCorsPolicy = "AllowAllCors";

var builder = WebApplication.CreateBuilder(args);

// Add CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy(name: allowAllCorsPolicy,
        policy =>
        {
            policy.AllowAnyOrigin();
            policy.AllowAnyMethod();
            policy.AllowAnyHeader();
        });
});

// Add services to the container.
builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
    .AddMicrosoftIdentityWebApi(builder.Configuration.GetSection("AzureAd"));
builder.Services.AddAuthorization();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(option =>
{
    option.SwaggerDoc("v1", new OpenApiInfo { Title = "Products API", Version = "v1" });
    option.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        In = ParameterLocation.Header,
        Description = "Please enter a valid token",
        Name = "Authorization",
        Type = SecuritySchemeType.Http,
        BearerFormat = "JWT",
        Scheme = "Bearer"
    });
    option.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type=ReferenceType.SecurityScheme,
                    Id="Bearer"
                }
            },
            new string[]{}
        }
    });
});

// Add the HttpClient service
builder.Services.AddHttpClient();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(allowAllCorsPolicy);
app.UseHttpsRedirection();

app.UseAuthentication();
app.UseAuthorization();

var scopeRequiredByApi = app.Configuration["AzureAd:Scopes"] ?? "";

app.MapGet("/GetProducts", async (HttpContext httpContext, IHttpClientFactory httpClientFactory) =>
{
    httpContext.VerifyUserHasAnyAcceptedScope(scopeRequiredByApi);

    var imageBaseUrl = $"{httpContext.Request.Scheme}://{httpContext.Request.Host}/api/images/";

    var upn = httpContext.User.Identity.IsAuthenticated ? httpContext.User.FindFirst("preferred_username")?.Value : null;
    var clientId = httpContext.User.Identity.IsAuthenticated ? httpContext.User.FindFirst("azp")?.Value : null;

    var result = new Products
    {
        Items = new List<Product>(new Product[] {
                    new Product {
                        Code = "P01",
                        Description = "Contoso Denim Jacket",
                        Price = 54,
                        Picture = $"{imageBaseUrl}jeans-jacket.png",
                        LaunchDate = DateTime.Now.AddDays(-40),
                        Sales = 20987
                    },
                    new Product {
                        Code = "P02",
                        Description = "Contoso Denim Jeans",
                        Price = 72,
                        Picture = $"{imageBaseUrl}blue-jeans.png",
                        LaunchDate = DateTime.Now.AddDays(+2),
                        Sales = 11238
                    },
                    new Product {
                        Code = "P03",
                        Description = "Cotton t-shirt",
                        Price = 35,
                        Picture = $"{imageBaseUrl}peach-hoodie.png",
                        LaunchDate = DateTime.Now.AddDays(+12),
                        Sales = 9567
                    },
                    new Product {
                        Code = "P04",
                        Description = "Contoso Black Jacket",
                        Price = 41,
                        Picture = $"{imageBaseUrl}black-jacket.png",
                        LaunchDate = DateTime.Now.AddDays(-45),
                        Sales = 12743
                    },
                    new Product {
                        Code = "P05",
                        Description = "Contoso Skirt",
                        Price = 38,
                        Picture = $"{imageBaseUrl}skirt.png",
                        LaunchDate = DateTime.Now.AddDays(-3),
                        Sales = 5843
                    },
                    new Product {
                        Code = "P06",
                        Description = "Cotton Blue Shirt",
                        Price = 52,
                        Picture = $"{imageBaseUrl}blue-shirt.png",
                        LaunchDate = DateTime.Now.AddDays(-20),
                        Sales = 3841
                    },
                }),
        ConsumerAppId = clientId,
        CurrentUserUPN = upn,
        ResponseDateTime = DateTime.Now
    };

    return result;
})
.WithName("consumeWithOBO")
.RequireAuthorization();

app.Run();
