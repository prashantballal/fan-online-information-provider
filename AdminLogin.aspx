<%@ Page Title="Administrator's login" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
.textbox { 
    height: 25px; 
    width: 275px; 
    background-color: transparent;  
    border-style: solid;  
    border-width: 0px 0px 1px 0px;  
    border-color: darkred; 
    outline:0; 
  } 
.button {
-moz-border-radius: 50px;
-webkit-border-radius: 50px;
-khtml-border-radius: 50px;
border-radius: 50px;
}
</style>



    <br />
<center>

    
    <br />
    
    <br />
    <asp:Label ID="Label1" runat="server" Text="Administrator's sign in" Font-Bold="True" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="#006699"></asp:Label>
    <div style="height: 540px; opacity: 0.7; filter: alpha(opacity=50); background-image: none; margin-right: 0px;">
    <br /><br /><br /><br />

    <div style="width: 630px; float: left;">
        <br /><br />
        <div style="width: 302px; float: right; opacity: 0.6">
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/FANbig.png" NavigateUrl="~/Home.aspx">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/LogoHome.png"></asp:Image>
        </asp:HyperLink>
    </div>
    </div>

    <div style="width: 630px; float: right;">
        <div style="width: 400px; height: 400px; border-radius: 50%; background-color: #C0C0C0; float: left">
        <br /><br /><br /><br /><br /><br /><br />
        <asp:TextBox ID="txtId" runat="server" CssClass="textbox" OnClick="this.value = ''" OnBlur="javascript:changeText(this.id)">Admin&#39;s ID</asp:TextBox>
        <br /><br />
        <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password" OnClick="this.value = ''" OnBlur="javascript:changeText(this.id)">Password</asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="btnGo" runat="server" Text="GO" CssClass="button" Height="50px" Width="50px" OnClick="btnGo_Click"></asp:Button>
    </div>
    </div>


    
    
</div>
<br />
</center>
</asp:Content>

