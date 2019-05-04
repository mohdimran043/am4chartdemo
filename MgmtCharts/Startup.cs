using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MgmtCharts.Startup))]
namespace MgmtCharts
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
