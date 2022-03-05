<%@ Page Title="FAN - user" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style>

label
{ 
    color: #006699; 
    font-family: Calibri;
    font-size: x-large;
}

.TextBox{
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #e5e5e5;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
color: #5a5656;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        font-size: 14px;
        outline: none;
        padding: 0px 10px;
        -webkit-appearance:none;
        color: black;
}

    .btn{
border-style: none;
border-color: inherit;
border-width: medium;
background-color: #006699;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
-webkit-appearance:none;
}
.btn:hover {
box-shadow: 0 5px 15px rgba(145, 92, 182, .4);
}
    .auto-style1 {
        width: 139px;
    }
</style>

<center>
    <br />
<div style="border-style: none; border-color: #0000FF; background-color:#006699; height: 70px; opacity: 0.7; filter: alpha(opacity=50); background-image: none; margin-bottom: 0px;">
    <br />
    <%--<br />--%>

<div style="float: left; width: 250px;">
<asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/FAN.png" NavigateUrl="~/Home.aspx">
<asp:Image ID="Image2" runat="server" ImageUrl="~/Images/INDICIUM[db].png"></asp:Image>
</asp:HyperLink>
</div>
    
<div style="float: right; width: 180px;">
    <asp:Button ID="btnSignOut" runat="server" Text="Sign out" Height="30px" Width="90px" BackColor="Black" BorderColor="#006699" ForeColor="White" Font-Bold="True" Font-Size="Large" OnClick="btnSignOut_Click" CssClass="btn" Font-Names="Gill Sans Ultra Bold Condensed"></asp:Button>
</div>
</div>
    <br />
    <br />
    <br />
    <asp:Label ID="lblMsg" runat="server" Text="Welcome User" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006699" Font-Bold="True" Font-Underline="True"></asp:Label>
    <br />
    <br />
    <br />
<div style="height: 450px">
    <div style="float: none; height: 333px; width: 885px; background-color: #000000;">
       
           <br />
            <div style="float: left; height: 312px; width: 320px;">
                <br />
           <asp:Image ID="ImageDB" runat="server" Height="175px" Width="175px" BorderStyle="Groove" BorderColor="#003366"></asp:Image>        
        <br /><br />
        <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#999999" BorderColor="#006699" BorderStyle="Groove"></asp:FileUpload>
               <br /><br />
        <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="btnUpload_Click" CssClass="btn" BackColor="Black" Height="30px" Width="100px"></asp:Button>
           <br />
                </div>
        <br />
            <div style="float: left; width: 563px; height: 292px;">
           <table style="height: 260px; width: 564px">
               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label1" runat="server" Text="Name:" Font-Size="X-Large" ForeColor="#006699" Font-Names="Calibri"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtName" runat="server" Width="325px" CssClass="TextBox" Height="25px"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label2" runat="server" Text="Email Id:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtEmail" runat="server" Width="325px" CssClass="TextBox" Height="25px"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label3" runat="server" Text="Contact No:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtCntd" runat="server" Width="326px" CssClass="TextBox" Height="25px"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtCntd" Font-Size="X-Large" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label4" runat="server" Text="Password:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtPassword" runat="server" Width="325px" CssClass="TextBox" TextMode="Password" Height="24px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>

                   </td>
                   <td>
                       <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn" Height="40px" Width="345px"></asp:Button>
                   </td>
               </tr>
           </table>
            </div>
            
                <br />
                <br />
           
                
            
       
    </div>
</div>
    

    
</center>

</asp:Content>

