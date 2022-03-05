using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1, cmd2, cmd3;
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

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        string name = txtName.Text;
        string email = txtEmail.Text;
        string cntd = txtContct.Text;
        string pwd = txtRePassword.Text;
        try
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string query = "select count(*) from users where email_id='" + email + "'";
            cmd1 = new SqlCommand(query, con);
            object ans = cmd1.ExecuteScalar();
            int c = Convert.ToInt32(ans);
            if (c > 0)
            {
                alert("this email id is already registered with FAN");
            }
            else
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
                con.Open();
                string insert = "insert into users(name, email_id, contact_no, password) values('"+ name +"', '"+ email +"', '"+ cntd +"', '"+ pwd +"')";
                cmd2 = new SqlCommand(insert, con);
                cmd2.ExecuteNonQuery();
                txtName.Text = "";
                txtEmail.Text = "";
                txtContct.Text = "";
                txtPassword.Text = "";
                txtRePassword.Text = "";
                alert("You are now user of FAN");
                //Response.Redirect("SignIn.aspx");
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }   
    }
}