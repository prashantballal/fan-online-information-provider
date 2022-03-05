<%@ Page Title="FAN - Sign up" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

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


.Label{
    font-size: larger;
    font-family: Calibri;
    color: white;
}

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
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #006699;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #f4f4f4;
            cursor: pointer;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            text-transform: uppercase;
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



        #outer {
            width: 300px;
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
<div style="height: 610px">

<div style="float:left; height: 575px;">
    <br /><br /><br />
<div style="height: 220px; width: 630px; background-color: #000000;">
    <br />
<h1 style="font-size: xx-large; font-family: Calibri; color: #006699">Hello . Please sign up</h1>
<h1 style="font-size: x-large; font-family: Calibri; color: #006699">Experience FAN by becoming member</h1>
<h1 style="font-size: large; font-family: Calibri; color: #006699">You are just one step away from becoming member of FAN!</h1>
</div>
    <br />
<div style="width: 444px; height: auto; float: left; background-color: #006699;">
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" Font-Underline="False" NavigateUrl="~/SignIn.aspx" ForeColor="Black" Font-Bold="True" Font-Names="Arial Black">Sign in instead</asp:HyperLink>
    <br />
    <br />
</div>
</div>

<div style="width: 630px; float: right; height: 575px;">
<div style="border: medium none #000080; background-color:#006699; height: 570px; width: 450px; margin-top: 3px; opacity:0.7">
<br />
<div id="outer" style="width: 300px; height: 460px;">
<div style="float: left">
<asp:Label CssClass="Label" ID="Label2" runat="server" Text="Enter name:"></asp:Label>
</div>
<asp:TextBox ID="txtName" CssClass="TextBox" runat="server" Text="" BackColor="White" BorderColor="White"></asp:TextBox>
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtName" Display="Dynamic" ForeColor="#990000"></asp:RequiredFieldValidator>
<br /><br />

<div style="float: left">
<asp:Label CssClass="Label" ID="Label3" runat="server" Text="Enter Email id:"></asp:Label>
</div>
<asp:TextBox ID="txtEmail" CssClass="TextBox" runat="server" Text="" BackColor="White"></asp:TextBox>
    <br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid Email Id" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<br /><br />

<div style="float: left">
<asp:Label CssClass="Label" ID="Label4" runat="server" Text="Enter Contact number:"></asp:Label>
</div>
<asp:TextBox ID="txtContct" CssClass="TextBox" runat="server" Text="" BackColor="White"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="invalid contact number" ControlToValidate="txtContct" Display="Dynamic" ForeColor="#990000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
<br /><br /><br />

<div style="float: left">
<asp:Label CssClass="Label" ID="Label5" runat="server" Text="Enter password:"></asp:Label>
</div>
<asp:TextBox ID="txtPassword" CssClass="TextBox" runat="server" Text="Password" TextMode="Password" BackColor="White"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

<br /><br /><br />

<div style="float: left">
<asp:Label CssClass="Label" ID="Label6" runat="server" Text="Re-enter password:"></asp:Label>
</div>
<asp:TextBox ID="txtRePassword" CssClass="TextBox" runat="server" Text="Password" TextMode="Password" BackColor="White"></asp:TextBox>    
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password fields should be matched" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
<br /><br />

    </div>
    <asp:Button ID="btnSignUp" CssClass="btnLogin" runat="server" Text="sign up" BackColor="Black" OnClick="btnSignUp_Click" Height="45px" Width="325px"/>






</div>

</div>
</div>
</body>
</asp:Content>

