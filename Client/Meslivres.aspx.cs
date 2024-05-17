using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Client
{
    public partial class Mes_livres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cat.aspx");
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("panier.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
    }
}