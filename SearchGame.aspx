<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="SearchGame.aspx.cs" Inherits="SearchGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                       <asp:TextBox ID="txtGameName" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
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
                       <asp:Label ID="Label3" runat="server" Text="Company name:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtCompanyName" runat="server" Width="300px" CssClass="TextBox"></asp:TextBox>
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
                       <asp:Label ID="Label5" runat="server" Text="Discription:" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtDiscription" runat="server" Width="300px" CssClass="TextBox" TextMode="MultiLine"></asp:TextBox>
                   </td>
               </tr>

               
           </table>
            </div>
            
                <br />
                <br />
           
                
            
       
    </div>
</center>
</asp:Content>

