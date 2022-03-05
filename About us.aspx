<%@ Page Title="i[db] - indicium" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="About us.aspx.cs" Inherits="About_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="height: 700px">
    <div style="float: none; height: 700px; width: 940px; background-color: #000000; opacity: 0.8">
        <br /><br />
        <div style="width: 700px; background-color: #006699; opacity: 0.8; height: auto">
            <br />
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/FAN.png" NavigateUrl="~/Home.aspx"></asp:HyperLink>
            <br />
        </div>
        
        <br />
        <asp:Label ID="Label2" runat="server" Text="ONLINE INFORMATION PROVIDER" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006699" Font-Underline="True" Font-Bold="True"></asp:Label>
        <br />
        <%--<asp:Label ID="Label3" runat="server" Text="INDICIUM[db] a.k.a. i[db]" Font-Names="Calibri" Font-Size="XX-Large" ForeColor="#006699" Font-Underline="True" Font-Bold="True"></asp:Label>--%>
        <br /><br /><br />
        <asp:Label ID="Label4" runat="server" Text="CREATED BY" Font-Names="Calibri" Font-Size="Large" ForeColor="#006699" Font-Underline="True"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="PRASHANT PRAKASH BALLAL" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
        <br /><br />
        <asp:Label ID="Label6" runat="server" Text="STUDENT OF" Font-Names="Calibri" Font-Size="Large" ForeColor="#006699" Font-Underline="True"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="GURUNANAK COLLEGE OF ARTS, COMMERCE AND SCIENCE" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#006699"></asp:Label>
    </div>
    </div>
    </center>
</asp:Content>

