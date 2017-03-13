using System;
using System.Web;
using System.Web.UI;

namespace Fma.Web
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition {
                Path = "~/Scripts/jquery-3.1.1.min.js",
                DebugPath = "~/Scripts/jquery-3.1.1.js"
            });
            ScriptManager.ScriptResourceMapping.AddDefinition("bootstrap", new ScriptResourceDefinition
            {
                Path = "~/Scripts/bootstrap.min.js",
                DebugPath = "~/Scripts/bootstrap.js"
            });

        }
    }
}