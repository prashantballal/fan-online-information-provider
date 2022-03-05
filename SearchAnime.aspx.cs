using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class SearchAnime : System.Web.UI.Page
{
    SqlCommand cmd, cmd1, cmd2, cmd3;
    SqlConnection con;
    SqlDataReader dr, dr1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string query = "select anime_name, image, creator_name, producer_name, release_date, description from animes where anime_name='" + Session["a"] + "'";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblMsg.Text = dr.GetString(0).ToString();
                txtAnimeName.Text = dr.GetString(0).ToString();
                txtCreatorName.Text = dr.GetString(2).ToString();
                txtProducerName.Text = dr.GetString(3).ToString();
                //txtReleaseDate.Text = dr.GetString(4).ToString();
                txtDescription.Text = dr.GetString(5).ToString();
                Image3.ImageUrl = dr.GetString(1).ToString();

                //txtName.Text = dr.GetString(0).ToString();
                //txtEmail.Text = dr.GetString(1).ToString();
                //txtCntd.Text = dr.GetString(2).ToString();
                //txtPassword.Text = dr.GetString(3).ToString();
                //ImageDB.ImageUrl = dr.GetString(4).ToString();
            }
            con.Close();
        }
    }
}