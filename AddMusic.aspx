<%@ Page Title="FAN - Add Music" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="AddMusic.aspx.cs" Inherits="AddMusic" %>

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
        width: 436px;
    }
    .auto-style2 {
        height: 75px;
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
    <br />
</div>
    <br />
    <br />
    <br />
    <asp:Label ID="lblMsg" runat="server" Text="ADD MUSIC" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006699" Font-Bold="True" Font-Underline="True"></asp:Label>
    <br />
    <br />
    <br />
<div style="height: 450px">
    <div style="float: none; height: 400px; width: 915px; background-color: #000000;">
       
           <br /><br />
            <div style="float: left; height: 350px; width: 321px;">
                <br />
           <asp:Image ID="Image3" runat="server" Height="175px" Width="175px" BorderStyle="Groove" BorderColor="#003366"></asp:Image>        
        <br /><br />
        <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#006699" BorderStyle="Groove" ForeColor="#999999"></asp:FileUpload>
               <br /><br />
        <asp:Button ID="Button2" runat="server" Text="Upload" CssClass="btn" BackColor="Black" Height="30px" Width="100px" OnClick="Button2_Click"></asp:Button>
           <br />
                </div>
        
            <div style="float: left; width: 550px; height: 350px;">
                <br />
           <table style="height: 330px; width: 525px">
               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label1" runat="server" Text="Name:" Font-Size="X-Large" ForeColor="#006699" Font-Names="Calibri"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtSongName" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label2" runat="server" Text="Lyrics by:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtLyricsBy" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label3" runat="server" Text="Background score:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtMusicBy" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label4" runat="server" Text="Release date:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtReleaseDate" runat="server" Width="300px" CssClass="TextBox" TextMode="Date"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label5" runat="server" Text="Description:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtDescription" runat="server" Width="300px" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style2">

                   </td>
                   <td class="auto-style2">
                       <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn" Height="40px" Width="320px" OnClick="Button1_Click"></asp:Button>
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

