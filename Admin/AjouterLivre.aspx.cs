using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class AjouterLivre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection cnx = new SqlConnection(Properties.Settings.Default.cnx); 

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
                cnx.Open();
                SqlCommand cmd = new SqlCommand("Insert into livre values(@da,@titre,@auteur,@desc,@prix,@prixshipemment,@photo,@numtheme) ", cnx);
                FileUpload1.SaveAs(Server.MapPath("~/Client/pictures/")+System.IO.Path.GetFileName(FileUpload1.FileName));
                string NomImage="pictures/"+System.IO.Path.GetFileName(FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@da", DateTime.Now);
                cmd.Parameters.AddWithValue("@titre", titre.Value.ToString());
                cmd.Parameters.AddWithValue("@auteur", auteur.Value.ToString());
                cmd.Parameters.AddWithValue("@desc", Textarea1.Value.ToString());
                cmd.Parameters.AddWithValue("@prix", prix.Value.ToString());
                cmd.Parameters.AddWithValue("@prixshipemment", prixlivraison.Value.ToString());
                cmd.Parameters.AddWithValue("@photo",NomImage);
                cmd.Parameters.AddWithValue("@numtheme", DropDownList1.SelectedValue);
                cmd.ExecuteNonQuery();
                titre.Value="";
                auteur.Value = "";
                Textarea1.Value = "";
                prixlivraison.Value="";
                cnx.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
                    Response.Redirect("/Client/CatAdmin.aspx");

        }

      

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/Client/home1.aspx");

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Client/Meslivres.aspx");

        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/Client/panier.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");
        }
    }
}