using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HOME : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    

       

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cat.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }
        SqlConnection cnx = new SqlConnection(Properties.Settings.Default.cnx);int NumLivre;
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            
            ListViewDataItem item = (ListViewDataItem)(sender as Control).NamingContainer;
            Label NomL = (Label)item.FindControl("Label2");
            string NomLivre = NomL.Text;
            Response.Redirect("Livre.aspx?NL="+NomLivre);
           
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("panier.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meslivres.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");

        }

       
    }
}