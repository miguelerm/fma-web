using Fma.Web.Servicios;
using System;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fma.Web
{
    public partial class Login : Page
    {
        private readonly UsuarioServicio usuarios = new UsuarioServicio();

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
            e.Authenticated = usuarios.Autenticar(LoginControl.UserName, LoginControl.Password);
        }
    }
}