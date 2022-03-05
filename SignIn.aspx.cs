using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignIn : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rd;

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text;
        string pwd = txtPassword.Text;
        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string query = "select count(*) from users where email_id='" + email + "' and password='" + pwd + "'";
            cmd = new SqlCommand(query, con);
            object ans = cmd.ExecuteScalar();
            int c = Convert.ToInt32(ans);
            if (c > 0)
            {
                txtEmail.Text = "";
                Session["user"] = email;
                Response.Redirect("UserProfile.aspx");
                alert("You are now logged in to i[db]");
            }
            else
            {
                alert("Email Id and password pair do not matched");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}