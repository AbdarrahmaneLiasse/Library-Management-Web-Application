using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Auth
{
    public partial class Auth : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection cnx = new SqlConnection(Properties.Settings.Default.cnx); 

        protected void Button2_Click(object sender, EventArgs e)
        {
            cnx.Open();
            SqlCommand cmd = new SqlCommand("insert into compte values(@l,@pw,'client')",cnx);
            cmd.Parameters.AddWithValue("@l",login.Value.ToString());
            cmd.Parameters.AddWithValue("@pw", pw.Value.ToString());
            cmd.ExecuteNonQuery();
            cnx.Close();

            cnx.Open();
            SqlCommand cmd1 = new SqlCommand("insert into profil values(@n,@t,@v,@adr,@l)", cnx);
            cmd1.Parameters.AddWithValue("@n", nom.Value.ToString());
            cmd1.Parameters.AddWithValue("@t", tel.Value.ToString());
            cmd1.Parameters.AddWithValue("@v", ville.Value.ToString());
            cmd1.Parameters.AddWithValue("@adr", adresse.Value.ToString());
            cmd1.Parameters.AddWithValue("@l", login.Value.ToString());
            cmd1.ExecuteNonQuery();
            cnx.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnx.Open();
            SqlCommand cmd1 = new SqlCommand("select numprofil from profil where loginc=@l",cnx);
            cmd1.Parameters.AddWithValue("@l",log.Value.ToString());
            int NumProfil = int.Parse(cmd1.ExecuteScalar().ToString());
            Session["NP"] = NumProfil;
            cnx.Close();

            cnx.Open();
            SqlCommand cmd = new SqlCommand("select * from compte where loginc=@l and pw=@pw",cnx);
            cmd.Parameters.AddWithValue("@l",log.Value.ToString());
            cmd.Parameters.AddWithValue("@pw", pass1.Value.ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["login"] = dr[0].ToString();
                    if (dr[2].ToString() == "client")
                        Response.Redirect("/Client/HOME.aspx");
                    else
                        Response.Redirect("/Client/home1.aspx");
                }
            }
            cnx.Close();
        }
    }
}