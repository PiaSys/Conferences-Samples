using Microsoft.ApplicationInsights;
using Microsoft.ApplicationInsights.Extensibility;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace AppInsightsExceptionLoggingDemo
{
    class Program
    {
        // Singleton pattern for TelemetryClient creation
        static Lazy<TelemetryClient> telemetryClient = new Lazy<TelemetryClient>(() => {

            var instrumentationKey = ConfigurationManager.AppSettings["InstrumentationKey"];
            TelemetryClient result = null;

            if (!String.IsNullOrEmpty(instrumentationKey))
            {
                result = new TelemetryClient
                { 
                    InstrumentationKey = instrumentationKey
                };

                // Setting this is needed to make metric tracking work
                TelemetryConfiguration.Active.InstrumentationKey = result.InstrumentationKey;

                result.Context.Session.Id = Guid.NewGuid().ToString();
                result.Context.Cloud.RoleInstance = "AppInsightsExceptionLoggingDemo";
                result.Context.Device.OperatingSystem = Environment.OSVersion.ToString();

                var coreAssembly = Assembly.GetExecutingAssembly();
                result.Context.GlobalProperties.Add("Version", ((AssemblyFileVersionAttribute)coreAssembly.GetCustomAttribute(typeof(AssemblyFileVersionAttribute))).Version.ToString());
            }

            return (result);
        }, true);

        // Singleton property for TelemetryClient
        static TelemetryClient TelemetryClient {
            get {
                return (telemetryClient.Value);
            }
        }

        static void Main(string[] args)
        {
            Dictionary<string, string> telemetryProperties = new Dictionary<string, string>();

            // Configure telemetry properties
            telemetryProperties.Add("MyCustomID", Guid.NewGuid().ToString());
            telemetryProperties.Add("MyCustomProperty", "Some random data");

            TelemetryClient.TrackEvent("ApplicationStarted");

            try
            {
                CallFailingMethod();
            }
            catch (ApplicationException ex)
            {
                LogException(ex, "Program.Main", telemetryProperties, null);
            }
            TelemetryClient.TrackEvent("ApplicationExecuted");

            TelemetryClient.Flush();
        }

        private static void CallFailingMethod()
        {
            throw new ApplicationException("Fake exception for demo purposes!");
        }

        static void LogException(Exception ex, string location, IDictionary<string, string> properties = null, IDictionary<string, double> metrics = null)
        {
            try
            {
                // Prepare event data
                properties = properties ?? new Dictionary<string, string>();
                metrics = metrics ?? new Dictionary<string, double>();

                properties["ExceptionDetails"] = ex.ToString();

                if (!string.IsNullOrEmpty(location))
                {
                    properties.Add("Location", location);
                }

                // Log the exception
                TelemetryClient.TrackException(ex, properties, metrics);
            }
            catch
            {
                // Eat all exceptions 
            }
        }
    }
}
