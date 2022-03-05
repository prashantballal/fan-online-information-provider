using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class WelcomeAdmin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1, cmd2;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        String str = "";
        str += "Welcome " +  Session["admin"].ToString();
        lblMsg.Text = str.ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11Project"].ToString());
            con.Open();
            string chkUser = "select count(*) from admin where admin_id='" + txtId.Text + "'";
            cmd2 = new SqlCommand(chkUser, con);
            object ans = cmd2.ExecuteScalar();
            int c = Convert.ToInt32(ans);
            if (c > 0)
            {
                lblResult.Text = "this admin is already in use";
            }
            else
            {
                string id = txtId.Text;
                string p = txtPassword.Text;
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["11Project"].ToString());
                con.Open();
                string insert = "insert into admin values(@id, @p)";
                cmd1 = new SqlCommand(insert, con);
                cmd1.Parameters.AddWithValue("@id", txtId.Text);
                cmd1.Parameters.AddWithValue("@p", txtPassword.Text);
                cmd1.ExecuteNonQuery();
                lblResult.Text = txtId.Text + " joins you into admin's club";
                txtId.Text = "";
                txtPassword.Text = "";
            }
            con.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);   
        }        
    }
    protected void btnSoftware_Click(object sender, EventArgs e)
    {
        btnSoftware.BackColor = System.Drawing.Color.Black; 
        Response.Redirect("AddSoftware.aspx");
    }
    protected void btnGame_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddGame.aspx");
    }
    protected void btnNovel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNovel.aspx");
    }
    protected void btnComic_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddComic.aspx");
    }
    protected void btnMovie_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddMovie.aspx");
    }
    protected void btnMusic_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddMusic.aspx");
    }
    protected void btnTV_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddTV.aspx");
    }
    protected void btnAnime_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddAnime.aspx");
    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("AdminLogin.aspx");
    }
}