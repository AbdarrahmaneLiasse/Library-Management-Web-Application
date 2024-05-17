using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class LivreParCatAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            h1.InnerText = "Catégorie: " + Request.QueryString["nc"];
            SqlConnection cnx = new SqlConnection(Properties.Settings.Default.cnx);
            cnx.Open();
            SqlCommand cmd = new SqlCommand("select * from theme where nomtheme=@nt", cnx);
            cmd.Parameters.AddWithValue("@nt", Request.QueryString["nc"]);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                p.InnerText = dr[2].ToString();

            }
            cnx.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatAdmin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            ListViewDataItem item = (ListViewDataItem)(sender as Control).NamingContainer;
            Label NomL = (Label)item.FindControl("Label2");
            string NomLivre = NomL.Text;
            Response.Redirect("LivreAdmin.aspx?nl=" + NomLivre);
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("home1.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meslivres.aspx");
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("panier.aspx");
        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");

        }
    }
}