using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            ListViewDataItem item = (ListViewDataItem)(sender as Control).NamingContainer;
            Label NomL = (Label)item.FindControl("Label2");
            string NomLivre = NomL.Text;
            Response.Redirect("LivreAdmin.aspx?NL=" + NomLivre);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatAdmin.aspx");

        }

       

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
              Response.Redirect("MeslivresAdmin.aspx");

        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("panierAdmin.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/AjouterLivre.aspx");
        }
    }
}