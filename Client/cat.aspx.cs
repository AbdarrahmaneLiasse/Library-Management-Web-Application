using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class cat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Client/LivreParCat.aspx?NC=" + NomCategorie);
            ListViewDataItem item = (ListViewDataItem)(sender as Control).NamingContainer;
            Label Nomc = (Label)item.FindControl("Label1");
            string NomCat = Nomc.Text;
            Response.Redirect("LivreParCat.aspx?NC=" + NomCat);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cat.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");

        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }
        
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meslivres.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("panier.aspx");
        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");
        }
    }
}
