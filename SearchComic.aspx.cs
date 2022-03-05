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

public partial class SearchComic : System.Web.UI.Page
{
    SqlCommand cmd, cmd1, cmd2, cmd3;
    SqlConnection con;
    SqlDataReader dr, dr1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["c"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string query = "select comic_name, image, writer_name, artist_name, publisher_name, release_date, description from comics where comic_name='" + Session["c"] + "'";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblMsg.Text = dr.GetString(0).ToString();
                txtCBName.Text = dr.GetString(0).ToString();
                txtWriterName.Text = dr.GetString(2).ToString();
                txtArtistName.Text = dr.GetString(3).ToString();
                txtPublisherName.Text = dr.GetString(4).ToString();
                //txtReleaseDate.Text = dr.GetString(5).ToString();
                txtDescription.Text = dr.GetString(6).ToString();
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