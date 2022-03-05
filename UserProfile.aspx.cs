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

public partial class UserProfile : System.Web.UI.Page
{
    SqlCommand cmd, cmd1, cmd2, cmd3;
    SqlConnection con;
    SqlDataReader dr, dr1;
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
        if(Session["user"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
        else
        {
            try
            {


                con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
                con.Open();
                string query = "select name, email_id, contact_no, password, image from users where email_id='" + Session["user"] + "'";
                cmd = new SqlCommand(query, con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr.GetString(4).ToString() == "")
                    {
                        lblMsg.Text = dr.GetString(0).ToString();
                        txtName.Text = dr.GetString(0).ToString();
                        txtEmail.Text = dr.GetString(1).ToString();
                        txtCntd.Text = dr.GetString(2).ToString();
                        txtPassword.Text = dr.GetString(3).ToString();
                        //ImageDB.ImageUrl = dr.GetString(4).ToString();
                    }
                    else
                    {
                        lblMsg.Text = dr.GetString(0).ToString();
                        txtName.Text = dr.GetString(0).ToString();
                        txtEmail.Text = dr.GetString(1).ToString();
                        txtCntd.Text = dr.GetString(2).ToString();
                        txtPassword.Text = dr.GetString(3).ToString();
                        ImageDB.ImageUrl = dr.GetString(4).ToString();
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("SignIn.aspx");
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string strfile = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/uploads/" + strfile);
            string path = "~/uploads/" + strfile.ToString();

            cmd2 = new SqlCommand("update users set image='" + path + "' where email_id='" + txtEmail.Text + "'",con);

            cmd2.ExecuteNonQuery();
            con.Close();

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string query = "select name, email_id, contact_no, password, image from users where email_id='" + Session["user"] + "'";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ImageDB.ImageUrl = dr.GetString(4).ToString();
            }
            con.Close();
        }
        catch(Exception ex)
        {
            alert("Please set profile photo");
        }
    }
}