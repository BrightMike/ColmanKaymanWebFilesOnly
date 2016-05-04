using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ColmanKayman.Startup))]
namespace ColmanKayman
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
