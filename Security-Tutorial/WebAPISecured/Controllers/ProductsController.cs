using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Identity.Web.Resource;
using Microsoft.OpenApi.Models;
using System.Net;
using System.Security.Claims;

namespace WebAPISecured.Controllers
{
    [Authorize]
    [ApiController]
    [Route("[controller]")]
    [RequiredScope(RequiredScopesConfigurationKey = "AzureAd:Scopes")]
    public class ProductsController : ControllerBase
    {
        private readonly ILogger<ProductsController> _logger;

        public ProductsController(ILogger<ProductsController> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "GetProducts")]
        public Products Get()
        {
            var imageBaseUrl = $"{this.Request.Scheme}://{this.Request.Host}/api/images/";

            var upn = User.Identity.IsAuthenticated ? User.FindFirst("preferred_username")?.Value : null;
            var clientId = User.Identity.IsAuthenticated ? User.FindFirst("azp")?.Value : null;

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
        }
    }
}