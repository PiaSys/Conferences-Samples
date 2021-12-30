using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.Security.Claims;

namespace StocksFunctionApp
{
    public static class StockQuote
    {
        [FunctionName("StockQuote")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", Route = null)] HttpRequest req,
            ILogger log,
            ClaimsPrincipal claimsPrincipal)
        {
            log.LogInformation("StockQuote function triggered!");

            string symbol = req.Query["symbol"];
            decimal quote = 0;
            Trend trend = Trend.Equal;

            switch (symbol.ToUpper())
            {
                case "MSFT":
                    quote = 330.8M;
                    trend = Trend.Down;
                    break;
                case "AMZN":
                    quote = 3482.05M;
                    trend = Trend.Down;
                    break;
                case "TSLA":
                    quote = 1067.95M;
                    trend = Trend.Up;
                    break;
                case "GOOGL":
                    quote = 2917.87M;
                    trend = Trend.Down;
                    break;
                case "FB":
                    quote = 327.64M;
                    trend = Trend.Down;
                    break;
                case "AAPL":
                    quote = 147.92M;
                    trend = Trend.Down;
                    break;
                case "ZM":
                    quote = 251.26M;
                    trend = Trend.Down;
                    break;
                default:
                    break;
            }

            return new OkObjectResult(new StockQuoteInfo {
                Symbol = symbol, 
                Quote = quote,
                Trend = trend,
                User = claimsPrincipal?.Identity?.Name ?? null
            });
        }
    }

    public class StockQuoteInfo
    {
        public string Symbol { get; set; }

        public decimal Quote { get; set; }

        [JsonConverter(typeof(StringEnumConverter))]
        public Trend Trend { get; set; }

        public string User { get; set; }
    }

    public enum Trend
    {
        Equal,
        Up,
        Down,
    }
}
