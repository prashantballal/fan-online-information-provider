<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageOne.master" AutoEventWireup="true" CodeFile="HomePage1.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="height: 161px">
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Width="150px"></asp:DropDownList>
        <br /> <br /> &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="645px" BorderStyle="Solid" Height="25px"></asp:TextBox>
        &nbsp; <br />
        <asp:Button ID="Button1" runat="server" Text="Button" BorderStyle="Solid" Width="150px"></asp:Button>
    </div>
    </center>
</asp:Content>
