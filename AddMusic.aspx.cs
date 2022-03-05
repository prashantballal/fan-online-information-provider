using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddMusic : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1, cmd2, cmd3;
    SqlDataReader dr;

    protected void alert(string s)
    {
        string msg = s;
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("<script type = 'text/javascript'>");
        sb.Append("window.onload = function(){");
        sb.Append("alert('");
        sb.Append(msg);
        sb.Append("')};");
        sb.Append("</script>");
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string so_name = txtSongName.Text;
        string ly_by = txtLyricsBy.Text;
        string mu_by = txtMusicBy.Text;
        string desc = txtDescription.Text;
        string date = txtReleaseDate.Text;
        string img = FileUpload1.FileName;

        string strfile = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/uploads/" + strfile);
        string path = "~/uploads/" + strfile.ToString();

        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string insert = "insert into musicals(song_name, image, lyrics_by, music_by, release_date, description) values('" + so_name + "', '" + path + "', '" + ly_by + "', '" + mu_by + "', '" + Convert.ToDateTime(date) + "', '" + desc + "')";
            cmd2 = new SqlCommand(insert, con);
            cmd2.ExecuteNonQuery();
            txtSongName.Text = "";
            txtLyricsBy.Text = "";
            txtMusicBy.Text = "";
            txtDescription.Text = "";
            txtReleaseDate.Text = "";
            alert("Record is successfully added");
            //Response.Redirect("Home.aspx");

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string strfile = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/uploads/" + strfile);
            string path = "~/uploads/" + strfile.ToString();

            cmd2 = new SqlCommand("update musicals set image='" + path + "' where song_name='" + txtSongName.Text + "'", con);

            cmd2.ExecuteNonQuery();
            con.Close();

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string query = "select image from musicals where song_name='" + txtSongName.Text + "'";
            cmd1 = new SqlCommand(query, con);
            dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                Image3.ImageUrl = dr.GetString(0).ToString();
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}