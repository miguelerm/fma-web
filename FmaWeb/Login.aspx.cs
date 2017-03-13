using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fma.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect(FormsAuthentication.DefaultUrl, false);
                Context.ApplicationInstance.CompleteRequest();
                return;
            }
        }

        protected void LoginControl_Authenticate(object sender, AuthenticateEventArgs e)
        {
            e.Authenticated = LoginControl.UserName == LoginControl.Password;
        }
    }
}