<%@ Page Title="FAN - Software, Games and more" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script src="JarFiles/jquery-3.1.1.js"></script>
<script type="text/javascript">
    
</script>

<style type="text/css">



.button {
-moz-border-radius: 50px;
-webkit-border-radius: 50px;
-khtml-border-radius: 50px;
border-radius: 50px;
}
.button:hover {
color: rgba(255, 255, 255, 1);
box-shadow: 0 5px 15px rgba(145, 92, 182, .4);
}

.buttonSearch {
-moz-border-radius: 50px;
-webkit-border-radius: 50px;
-khtml-border-radius: 50px;
border-radius: 50px;
border-style: none;
border-color: inherit;
border-width: medium;
background-color: #006699;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
-webkit-appearance:none;
}

.txtSearch {
-moz-border-radius: 50px;
-webkit-border-radius: 50px;
-khtml-border-radius: 50px;
border-radius: 50px;
border-style: none;
border-color: inherit;
border-width: medium;
background-color: #006699;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
-webkit-appearance:none;
}

.btnLogin{
border-style: none;
border-color: inherit;
border-width: medium;
background-color: #006699;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
-webkit-appearance:none;
}
.btnLogin:hover {
box-shadow: 0 5px 15px rgba(145, 92, 182, .4);
}

icon{
-webkit-border-top-right-radius: 5px;
-webkit-border-bottom-right-radius: 5px;
-moz-border-radius-topright: 5px;
-moz-border-radius-bottomright: 5px;
border-top-right-radius: 5px;
border-bottom-right-radius: 5px;
border: none;
background: #232833;
height: 50px;
width: 50px;
color: #4f5b66;
opacity: 0;
font-size: 10pt;
-webkit-transition: all .55s ease;
-moz-transition: all .55s ease;
-ms-transition: all .55s ease;
-o-transition: all .55s ease;
transition: all .55s ease;
}

</style> 



<body>
<br />
<center>
<div style="border-style: none; border-color: #0000FF; background-color:#006699; height: 70px; opacity: 0.8; filter: alpha(opacity=50); background-image: none; margin-bottom: 0px;">
<%--<br />--%>

<div style="float:left; width: 250px; height: 70px;">
    <br />
<asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/FAN.png" NavigateUrl="~/Home.aspx">
<asp:Image ID="Image2" runat="server" ImageUrl="~/Images/INDICIUM[db].png"></asp:Image>
</asp:HyperLink>
    <br />
</div>

    
<div style="float:right; width: 325px;">
<br />
<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/AdminLogin.aspx" Font-Names="Gill Sans Ultra Bold Condensed" Font-Overline="False" Font-Bold="True" Font-Size="X-Large">Administrator</asp:HyperLink>
&nbsp;<asp:Label ID="Label1" runat="server" Text="|" ForeColor="White" Font-Size="X-Large" Font-Names="Gill Sans Ultra Bold Condensed"></asp:Label>
&nbsp;<asp:Button ID="btnSignIn" runat="server" Text="Sign in" Height="30px" Width="90px" BackColor="Black" BorderColor="#006699" ForeColor="White" CssClass="btnLogin" OnClick="btnSignIn_Click" Font-Bold="True" Font-Size="Large" Font-Names="Gill Sans Ultra Bold Condensed"></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</div>
    <br /><br />
<div>  

<br />


<div style="width: 304px; opacity: 0.5; filter: alpha(opacity = 50)">
<asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/FANbig.png" NavigateUrl="~/Home.aspx">
    <asp:Image ID="Image1" runat="server"></asp:Image>
</asp:HyperLink>
</div>
    <br /><br />
<div style="height: 76px; width: 928px; background-color: #000000; opacity: 0.8; filter: alpha(opacity = 50);">
<div style="border: thin groove #006699; width: 928px; height: 76px; opacity: 1; filter: alpha(opacity=50); background-color: #000000;">
<br />
<asp:TextBox ID="txtSearch" CssClass="txtSearch" runat="server" Width="690px" Height="30px" BackColor="White" Font-Size="Medium" Font-Names="Gill Sans Ultra Bold Condensed" ForeColor="#006699" BorderColor="#006699" BorderStyle="None" OnClick="this.value = ''" OnBlur="javascript:changeText(this.id)" AutoPostBack="True">  Search software, game, movie, novel, etc...</asp:TextBox>


&nbsp;


<asp:DropDownList ID="ddlCategory" CssClass="txtSearch" runat="server" Height="32px" Width="120px" BackColor="White" Font-Names="Gill Sans Ultra Bold Condensed" ForeColor="#006699">
    <asp:ListItem>Category</asp:ListItem>
    <asp:ListItem>softwares</asp:ListItem>
    <asp:ListItem>games</asp:ListItem>
    <asp:ListItem>novels</asp:ListItem>
    <asp:ListItem>comics</asp:ListItem>
    <asp:ListItem>movies</asp:ListItem>
    <asp:ListItem>music</asp:ListItem>
    <asp:ListItem>tvs</asp:ListItem>
    <asp:ListItem>anime</asp:ListItem>
    </asp:DropDownList>
</div>
    <br />
<asp:Button ID="btnSearch" CssClass="buttonSearch" runat="server" Text="Search" Width="151px" Height="50px" BackColor="#006699" BorderColor="#006699" Font-Size="Medium" ForeColor="White" Font-Names="Gill Sans Ultra Bold" OnClick="btnSearch_Click" ></asp:Button>

    
</div>
</div>
    <br /><br /><br /><br /><br /><br />

<br /><br />
<div id="cat" style="background-color: #000000; opacity: 0.8; filter: alpha(opacity=50); height: auto;">
<%--<div style="background-color: #006699">
<asp:Label ID="Label2" runat="server" Text="Categories" Font-Bold="True" Font-Names="Calibri" ForeColor="White"></asp:Label>
</div>--%>

<br />
<asp:Button ID="btnSoftware" CssClass="button" runat="server" Text="SOFTWARE" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnSoftware_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnGame" CssClass="button" runat="server" Text="GAME" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnGame_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnNovel" CssClass="button" runat="server" Text="NOVEL" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnNovel_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp;
<asp:Button ID="btnComic" CssClass="button" runat="server" Text="COMIC" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnComic_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp;
<asp:Button ID="btnMovie" CssClass="button" runat="server" Text="MOVIE" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnMovie_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnMusic" CssClass="button" runat="server" Text="MUSIC" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnMusic_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnTv" CssClass="button" runat="server" Text="TV" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnTv_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp; &nbsp;&nbsp;&nbsp;
<asp:Button ID="btnAnime" CssClass="button" runat="server" Text="ANIME" Width="90px" Height="90px" BackColor="#006699" BorderColor="#006699" Font-Size="X-Small" Font-Bold="True" OnClick="btnAnime_Click" Font-Names="Gill Sans Ultra Bold" ></asp:Button>
    <br /><br />
</div>

</center>
<br /><br />
</body>
</asp:Content>

