using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DatingWebbAPPHt2016.Startup))]
namespace DatingWebbAPPHt2016
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
