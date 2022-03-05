<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/MasterPageOne.master" AutoEventWireup="true" CodeFile="LoginPage1.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 326px;
        height: 389px;
    }
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 25px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 25px;
text-transform: uppercase;
width: 300px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }

.TextBox{
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 25px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}

.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}

.btnLogin{
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 25px;
text-transform: uppercase;
width: 300px;
-webkit-appearance:none;
}

.facebook {
background-color: #0079ce;
border: none;
border-radius: 3px 3px 3px 3px;
-moz-border-radius: 3px 3px 3px 3px;
-webkit-border-radius: 3px 3px 3px 3px;
color: #f4f4f4;
cursor: pointer;
height: 25px;
text-transform: uppercase;
width: 325px;
}

.twitter {
background-color: #1bb2e9;
border: none;
border-radius: 3px 3px 3px 3px;
-moz-border-radius: 3px 3px 3px 3px;
-webkit-border-radius: 3px 3px 3px 3px;
color: #f4f4f4;
cursor: pointer;
height: 25px;
text-transform: uppercase;
width: 325px;
}
</style>
<body>
<div id="login">
<center>
<h1><strong>Welcome . Sign in your account</strong></h1>
</center>
<fieldset>
<p><asp:TextBox ID="txtUserName" CssClass="TextBox" runat="server" text="User Name" OnClick="this.value = ''" OnBlur="javascript:changeText(this.id)"></asp:TextBox></p>
<p><asp:TextBox ID="txtPassword" CssClass="TextBox" runat="server" text="Password" OnClick="this.value = ''" OnBlur="javascript:changeText(this.id)" TextMode="Password"></asp:TextBox></p>    
<p><a href="#">Forgot Password?</a></p>
<p><asp:Button ID="btnLogin" CssClass="btnLogin" runat="server" Text="login"/></p>
</fieldset>
<p><span class="btn-round">or</span></p>
<p><asp:Button ID="btnFacebook" CssClass="facebook" runat="server" Text="login with facebook"/></p>
<p><asp:Button ID="btnTwitter" CssClass="twitter" runat="server" Text="login with twitter"/></p>
</div> <!-- end login -->
</body>
</asp:Content>