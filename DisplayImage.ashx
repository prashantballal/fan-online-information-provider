<%@ WebHandler Language="C#" Class="DisplayImage" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;  

public class DisplayImage : IHttpHandler 
{
    string constring = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString; 
    
    public void ProcessRequest (HttpContext context) 
    {
        string ImageId = context.Request.QueryString["ImageId"];
        SqlConnection conn = new SqlConnection(constring);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Photo from EmployeeImage where ImageId=" + ImageId, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[4]);
        conn.Close();
        context.Response.End(); 
    }
 
    public bool IsReusable 
    {
        get 
        {
            return false;
        }
    }

}