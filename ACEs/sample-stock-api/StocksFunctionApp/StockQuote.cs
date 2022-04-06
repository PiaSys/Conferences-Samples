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
                    quote = 299.49M;
                    trend = Trend.Down;
                    break;
                case "AMZN":
                    quote = 3268.16M;
                    trend = Trend.Down;
                    break;
                case "TSLA":
                    quote = 999.11M;
                    trend = Trend.Up;
                    break;
                case "GOOGL":
                    quote = 2765.51M;
                    trend = Trend.Down;
                    break;
                case "FB":
                    quote = 213.46M;
                    trend = Trend.Down;
                    break;
                case "AAPL":
                    quote = 170.21M;
                    trend = Trend.Up;
                    break;
                case "ZM":
                    quote = 116.81M;
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
