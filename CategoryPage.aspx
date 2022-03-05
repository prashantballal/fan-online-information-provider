<%@ Page Title="categories" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="CategoryPage.aspx.cs" Inherits="CategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
 h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
</style>
<body>
<br /><br />
<center>
<div style="border-style: groove; border-color: #0000FF; background-color:white; width:1100px; height: 660px; opacity: 0.7; filter: alpha(opacity=50); background-image: url('Images/back.jpg');">
    <br />
    
<asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/logoIndicium.jpg" NavigateUrl="~/HomePage.aspx">
<asp:Image ID="Image1" runat="server"></asp:Image>
</asp:HyperLink>

    <div style="background-color: #3333FF">
        <h1><b>CATEGORIES</b></h1>
    </div>
        <div style="height: 500px">
        <div style=" height: 460px; width: 1000px">
            <br />
            <div style="height: 178px; width: 925px;">
            <div style="width: 445px; height: 180px; float: left;">
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: left; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnSoftware" runat="server" Text="Software" Width="100px" Height="40px"></asp:Button>
            </div>          
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: right; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnGames" runat="server" Text="Games" Width="100px" Height="40px"></asp:Button>
            </div>
            </div>

            <div style="width: 445px; height: 180px; float: right;">
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: left; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnNovels" runat="server" Text="Novels" Width="100px" Height="40px"></asp:Button>
            </div>          
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: right; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnComics" runat="server" Text="Comics" Width="100px" Height="40px"></asp:Button>
            </div>
            </div>
            </div>

            <br />
            <div style="height: 178px; width: 925px;">
            <div style="width: 445px; height: 180px; float: left;">
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: left; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnMovies" runat="server" Text="Movies" Width="100px" Height="40px"></asp:Button>
            </div>          
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: right; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnTV" runat="server" Text="TV" Width="100px" Height="40px"></asp:Button>
            </div>
            </div>

            <div style="width: 445px; height: 180px; float: right;">
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: left; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnMusic" runat="server" Text="Music" Width="100px" Height="40px"></asp:Button>
            </div>          
            <div style="border: thin groove #000000; width: 200px; height: 175px; float: right; border-radius:20%; background-color: #FFFFFF;">
                <br /><br /><br /><br /><br />
                <asp:Button ID="btnAnime" runat="server" Text="Anime" Width="100px" Height="40px"></asp:Button>
            </div>
            </div>
            </div>
                
            
            
        </div>
        </div>
</div>
</center>
<br />
</body>
</asp:Content>

