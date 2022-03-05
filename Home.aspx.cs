using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignIn.aspx");
    }
    protected void btnSoftware_Click(object sender, EventArgs e)
    {
        Response.Redirect("Software.aspx");
    }
    protected void btnGame_Click(object sender, EventArgs e)
    {
        Response.Redirect("Game.aspx");
    }
    protected void btnNovel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Novel.aspx");
    }
    protected void btnComic_Click(object sender, EventArgs e)
    {
        Response.Redirect("Comic.aspx");
    }
    protected void btnMovie_Click(object sender, EventArgs e)
    {
        Response.Redirect("Movie.aspx");
    }
    protected void btnMusic_Click(object sender, EventArgs e)
    {
        Response.Redirect("Music.aspx");
    }
    protected void btnTv_Click(object sender, EventArgs e)
    {
        Response.Redirect("TV.aspx");
    }
    protected void btnAnime_Click(object sender, EventArgs e)
    {
        Response.Redirect("Anime.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string str1 = txtSearch.Text;
        int str2 = ddlCategory.SelectedIndex;

        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();

            if (str2 == 1)
            {
                string q = "select * from softwares where software_name='"+str1+"'";
                Session["s"] = str1;
                Response.Redirect("SearchSoftware.aspx");
            }

            if (str2 == 2)
            {
                string q = "select * from softwares where software_name='" + str1 + "'";
                Session["g"] = str1;
                Response.Redirect("SearchGame.aspx");
            }

            if (str2 == 3)
            {
                string q = "select * from softwares where software_name='" + str1 + "'";
                Session["n"] = str1;
                Response.Redirect("SearchNovel.aspx");
            }

            if (str2 == 4)
            {
                string q = "select * from softwares where software_name='" + str1 + "'";
                Session["c"] = str1;
                Response.Redirect("SearchComic.aspx");
            }

            if (str2 == 5)
            {
                string q = "select * from softwares where software_name='" + str1 + "'";
                Session["mo"] = str1;
                Response.Redirect("SearchMovie.aspx");
            }

            if (str2 == 6)
            {
                string q = "select * from softwares where software_name='" + str1 + "'";
                Session["mu"] = str1;
                Response.Redirect("SearchMusic.aspx");
            }

            if (str2 == 7)
            {
                string q = "select * from softwares where software_name='" + str1 + "'";
                Session["tv"] = str1;
                Response.Redirect("SearchTV.aspx");
            }

            if (str2 == 8)
            {
                string q = "select * from softwares where software_name='" + str1 + "'";
                Session["a"] = str1;
                Response.Redirect("SearchAnime.aspx");
            }

            //string query = "select * from'"+ str2 +"' where ";
            //cmd = new SqlCommand(query, con);

            //object ans = cmd.ExecuteScalar();
            //int c = Convert.ToInt32(ans);
            //if (c > 0)
            //{
            //    txtEmail.Text = "";
            //    Session["user"] = email;
            //    Response.Redirect("UserProfile.aspx");
            //    alert("You are now logged in to i[db]");
            //}
            //else
            //{
            //    alert("Email Id and password pair do not matched");
            //}
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}