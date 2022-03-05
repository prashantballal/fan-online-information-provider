<%@ Page Title="i[db] - FAQ" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="height: 700px;">
    <div style="float: none; height: 700px; width: 940px; background-color: black; opacity: 0.8">
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
    </div>
    </div>
    </center>
</asp:Content>

