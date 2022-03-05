<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="SearchAnime.aspx.cs" Inherits="SearchAnime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<style>

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
</style>--%>

    <center>
    <br />
    <div style="background-color: #006699; opacity:0.8;">
        <br />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server" Text="Label" ForeColor="White" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <br />
        
    </div>
        <br /><br />
        <div style="height: 450px">
    <div style="float: none; height: 400px; width: 915px; background-color: #000000;">
       
           <br /><br />
            <div style="float: left; height: 350px; width: 321px;">
                <br />
           <asp:Image ID="Image3" runat="server" Height="175px" Width="175px" BorderStyle="Groove" BorderColor="#003366"></asp:Image>        
        <br /><br />
               <br /><br />
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
                       <asp:TextBox ID="txtAnimeName" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label2" runat="server" Text="Created by:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtCreatorName" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
                   </td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <asp:Label ID="Label3" runat="server" Text="Produced by:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtProducerName" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
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

               
           </table>
            </div>
            
                
           
                
            
       
    </div>

    
    
</div>
</center>
</asp:Content>

