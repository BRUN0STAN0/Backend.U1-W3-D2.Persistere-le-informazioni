using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backend.U1_W3_D2.Persistere_le_informazioni
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["signin"] != null) { 
            Benvenuto.Text = $"Benvenuto, {Request.Cookies["signin"]["email"]}";
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("signin");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }
    }
}