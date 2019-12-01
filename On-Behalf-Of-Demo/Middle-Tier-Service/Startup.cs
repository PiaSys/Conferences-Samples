using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Middle_Tier_Service.Startup))]
namespace Middle_Tier_Service
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
