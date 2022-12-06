using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backend.U1_W3_D2.Persistere_le_informazioni
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["signin"] != null)
            {
                Response.Redirect("Homepage.aspx");
            }
        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("signin");
            cookie.Values["email"] = Email.Text;
            cookie.Values["password"] = Password.Text;
            cookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cookie);
            Response.Redirect("Homepage.aspx");
        }
    }
}