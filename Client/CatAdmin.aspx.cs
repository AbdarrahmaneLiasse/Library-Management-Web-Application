using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class Cat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        

        

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            ListViewDataItem item = (ListViewDataItem)(sender as Control).NamingContainer;
            Label Nomc = (Label)item.FindControl("Label1");
            string NomCat = Nomc.Text;
            Response.Redirect("LivreParCatAdmin.aspx?nc=" + NomCat);
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("home1.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("MeslivresAdmin.aspx");
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("panierAdmin.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/AjouterCategorie.aspx");

        }
    }
}