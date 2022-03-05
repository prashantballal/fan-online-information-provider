<%@ Page Title="Welcome Admin - Select choice" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="WelcomeAdmin.aspx.cs" Inherits="WelcomeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <script src="JarFiles/jquery-3.1.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnSoftware").click(function () {
                $("#btnSoftware").css("background-color", "red");
            });
        })
    </script>

<style type="text/css">
    .button:hover {
color: rgba(0,255,255,1);
box-shadow: 0 5px 15px rgba(145, 92, 182, 1);
background-color: aqua;
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
        width: 300px;
    }
    

</style>
<center>
<br />
<div style="border-style: none; border-color: #0000FF; background-color:#006699; height: 70px; opacity: 0.7; filter: alpha(opacity=50); background-image: none; margin-bottom: 0px;">
 <div style="float:right; width: 325px;">
<br />
<asp:Label ID="Label5" runat="server" Text="Administration" ForeColor="White" Font-Size="X-Large" Font-Bold="True" Font-Names="Gill Sans Ultra Bold Condensed"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text="|" ForeColor="White" Font-Size="X-Large"></asp:Label>
&nbsp;<asp:Button ID="btnSignOut" runat="server" Text="Sign out" Height="30px" Width="90px" BackColor="Black" BorderColor="#006699" ForeColor="White" CssClass="btn" OnClick="btnSignOut_Click" Font-Bold="True" Font-Size="Large" Font-Names="Gill Sans Ultra Bold Condensed"></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>   
    <br />
    
<div style="float:left; width: 250px;">
<asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/FAN.png" NavigateUrl="~/Home.aspx"></asp:HyperLink>
</div>

</div>
<br />
    <asp:Label ID="lblMsg" runat="server" Text="welcome admin " Font-Bold="True" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006699"></asp:Label>
    <br /><br />
<div style="height: 478px">   
<div style="width: 515px; float: left;">
    <br /><br /><br /><br />
<div style="background-color: #006699; height: 320px; width: 515px;">
        <br />
        
        <br />
        
        <br />
        <br />
        <table style="height: 50px; width: 300px">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Make someone admin" Font-Names="Broadway" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 260px">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Give admin id: " Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" Width="125px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Give password: " Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="125px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Width="130px"></asp:Button>
                </td>
            </tr>
        </table>
        
        
        <br />
        <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Maroon"></asp:Label>
    </div>
    </div>

<div style="border-color: #006699; background-image: none; background-color: #000000; height: 478px; float: right; width: 742px; opacity: 0.8; margin-left: 0px;">
    <div style="background-color: black; height: 100px;">
        <div style="float: left; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnSoftware" runat="server" Text="add software" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnSoftware_Click" CssClass="button"></asp:Button>
        </div>

        <div style="float: right; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnGame" runat="server" Text="add game" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnGame_Click" CssClass="button"></asp:Button>
        </div>
    </div>
    <br />
    <div style="background-color: black; height: 100px;">
        <div style="float: left; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnNovel" runat="server" Text="add novel" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnNovel_Click" CssClass="button"></asp:Button>
        </div>

        <div style="float: right; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnComic" runat="server" Text="add comic" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnComic_Click" CssClass="button"></asp:Button>
        </div>
    </div>
    <br />
    <div style="background-color: black; height: 100px;">
        <div style="float: left; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnMovie" runat="server" Text="add movie" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnMovie_Click" CssClass="button"></asp:Button>
        </div>

        <div style="float: right; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnMusic" runat="server" Text="add music" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnMusic_Click" CssClass="button"></asp:Button>
        </div>
    </div>
    <br />
    <div style="background-color: black; height: 100px;">
        <div style="float: left; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnTV" runat="server" Text="add tv" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnTV_Click" CssClass="button"></asp:Button>
        </div>

        <div style="float: right; width: 355px; height: 100px; background-color: #C0C0C0;">
            <asp:Button ID="btnAnime" runat="server" Text="add anime" Height="100px" Width="355px" BackColor="#009999" ForeColor="White" Font-Names="Copperplate Gothic Bold" Font-Size="XX-Large" BorderStyle="None" OnClick="btnAnime_Click" CssClass="button"></asp:Button>
        </div>
    </div>
    </div>
    </div>
</center>
</asp:Content>

