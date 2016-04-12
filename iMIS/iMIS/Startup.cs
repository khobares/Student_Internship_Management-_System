using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(iMIS.Startup))]
namespace iMIS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
