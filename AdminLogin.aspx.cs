using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

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

    protected void btnGo_Click(object sender, EventArgs e)
    {
        
        string errorText = "user id and password pair do not match";
        string str1 = txtId.Text;
        string str2 = txtPassword.Text;
        try
        {            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["11project"].ToString());
            con.Open();
            string query = "select count(*) from admin where admin_id='"+str1+"' and password='"+ str2 +"'";
            SqlCommand cmd = new SqlCommand(query, con);
            object ans = cmd.ExecuteScalar();
            int c = Convert.ToInt32(ans);
            if (c > 0) 
            {
                Session["admin"] = str1;
                Response.Redirect("WelcomeAdmin.aspx"); 
            }
            else
            {
                //lblMsg.Text = "incorrect login information";
                alert(errorText);
            }
            //else { alert("user id and password pair do not match"); }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}