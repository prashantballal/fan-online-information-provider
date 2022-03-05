<%@ Page Title="FAN - Sign in" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
/*body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}*/
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
width: 328px;
height: 392px;
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
background-color: #006699;
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

.div{
background-color: rgba(255,0,0, .5);
}



</style>

<body>
<br />
<center>
<div style="border-style: none; border-color: #0000FF; background-color:#006699; height: 70px; opacity: 0.7; filter: alpha(opacity=50); background-image: none; margin-bottom: 0px;">
    <br />
    <%--<br />--%>

<div style="float:left; width: 250px;">
<asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/FAN.png" NavigateUrl="~/Home.aspx">
<asp:Image ID="Image2" runat="server" ImageUrl="~/Images/INDICIUM[db].png"></asp:Image>
</asp:HyperLink>
</div>
</div>
    <br /><br />
<div style="height: 284px">

    <div style="float: right; height: 255px;">
        
<div style="height: 176px; width: 630px; background-color: #000000;">
    <br />
<h1 style="font-size: xx-large; font-family: Calibri; color: #006699">Hello . Please sign in</h1>
<h1 style="font-size: x-large; font-family: Calibri; color: #006699">Sign in to your existing acount associated with FAN!</h1>
</div>
    <br />
<div style="width: 444px; height: auto; float: right; background-color: #006699;">
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" Font-Underline="False" NavigateUrl="~/SignUp.aspx" ForeColor="Black" Font-Bold="True" Font-Names="Arial Black">Sign up instead</asp:HyperLink>
    <br />
    <br />
</div>
</div>

<div style="width: 630px; float: left; height: 255px;">
<div style="border: medium none #000080; background-color:#006699; height: 255px; width: 450px; margin-top: 3px; opacity:0.7">

<br /><br />
<div style="border-style: none; width: 370px; border-left-color: #666666; border-right-color: #666666; border-top-color: #666666; border-bottom-color: #666666;">
<p><asp:TextBox ID="txtEmail" CssClass="TextBox" runat="server" Text="Enter Email Id" OnClick="this.value = ''" OnBlur="javascript:changeText(this.id)" BackColor="White"></asp:TextBox></p>
<p><asp:TextBox ID="txtPassword" CssClass="TextBox" runat="server" Text="Password" OnClick="this.value = ''" OnBlur="javascript:changeText(this.id)" TextMode="Password" BackColor="White"></asp:TextBox></p>    
<p><asp:HyperLink ID="HyperLink3" runat="server">Forgot Password?</asp:HyperLink></p>
<p><asp:Button ID="Button2" CssClass="btnLogin" runat="server" Text="sign in" BackColor="Black" OnClick="Button2_Click"/></p>
</div>
<%--<p><span class="btn-round">or</span></p>
<p><asp:Button ID="Button3" CssClass="facebook" runat="server" Text="login with facebook" BackColor="#000099"/></p>
<p><asp:Button ID="Button4" CssClass="twitter" runat="server" Text="login with twitter" BackColor="#0099FF"/></p>--%>
</div>
<br />

</div>

</div>
</body>
</asp:Content>

