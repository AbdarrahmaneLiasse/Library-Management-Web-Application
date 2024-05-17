using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Client
{
    public partial class Livre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categorie.aspx");

        }

       
        
        SqlConnection cnx = new SqlConnection(Properties.Settings.Default.cnx);
        protected void LinkButton4_Click(object sender, EventArgs e)
        {

           


        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {ListViewDataItem item = (ListViewDataItem)(sender as Control).NamingContainer;
            Label NomL = (Label)item.FindControl("Label1");
            string NomLivre = NomL.Text;
            TextBox qt=(TextBox)item.FindControl("quantite");
            int Qte = int.Parse(qt.Text);
 cnx.Open();
           SqlCommand cmd = new SqlCommand("select numlivre from livre where titre=@t",cnx);
            cmd.Parameters.AddWithValue("@t",Request.QueryString["NL"]);
            int numeroLivre=int.Parse(cmd.ExecuteScalar().ToString());
           
            SqlCommand cmd1 = new SqlCommand("insert into panier values(@nl,@np,@qte,'non')",cnx);
            cmd1.Parameters.AddWithValue("@nl",numeroLivre);
            cmd1.Parameters.AddWithValue("@np", Session["NP"]);
            cmd1.Parameters.AddWithValue("@qte", Qte);
            cmd1.ExecuteNonQuery();
            Response.Write("<script>alert('Vous avez ajouter le livre" + NomLivre + "')</script>");
            cnx.Close();

            Response.Redirect("HOME.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meslivres.aspx");
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("panier.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");

        }
    }
}