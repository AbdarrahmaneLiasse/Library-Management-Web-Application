using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Client
{
    public partial class panier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //float total;
            //float somme = 0;
            //foreach (ListViewItem item in ListView1.Items)
            //{
            //    Label NumL = (Label)item.FindControl("Label1");
            //    float prix = float.Parse(NumL.Text);
            //    Label QTE = (Label)item.FindControl("Label3");
            //    int qte = int.Parse(QTE.Text);
            //    total = prix * qte;
            //    somme += total;
            //}
            //TOTAL.InnerText = "Prix total est: "+somme.ToString();
        }
        SqlConnection cnx = new SqlConnection(Properties.Settings.Default.cnx);

        protected void BtnSuppr_ServerClick(object sender, EventArgs e)
        {
            cnx.Open();

            ListViewDataItem item = (ListViewDataItem)(sender as Control).NamingContainer;
            Label NumL = (Label)item.FindControl("Label2");
            int NumLivre = int.Parse(NumL.Text);
            SqlCommand cmd2 = new SqlCommand("delete panier where numlivre=@nl and numprofil=@np", cnx);
            cmd2.Parameters.AddWithValue("@np", Session["NP"]);
            cmd2.Parameters.AddWithValue("@nl", NumLivre);
            cmd2.ExecuteNonQuery();
            ListView1.DataBind();
            cnx.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("cat.aspx");

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meslivres.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            foreach (ListViewItem item in ListView1.Items)
            {
                cnx.Open();
                Label NumL = (Label)item.FindControl("Label2");
                int NumLivre = int.Parse(NumL.Text);
                SqlCommand cmd = new SqlCommand("update panier set valid='oui' where numlivre=@nl and numprofil=@np", cnx);
                cmd.Parameters.AddWithValue("@np", Session["NP"]);
                cmd.Parameters.AddWithValue("@nl", NumLivre);
                cmd.ExecuteNonQuery();
                ListView1.DataBind();
                cnx.Close();
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Auth/Auth.aspx");

        }
    }
}