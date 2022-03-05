<%@ Page Title="FAN ~ Game" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Game.aspx.cs" Inherits="Game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<center>
<div style="height: auto; background-color: #006699; opacity: 0.7">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="GAMES" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <br />
</div>

<div style="min-height:500px; max-height:10000px; background-color: #000000; opacity:0.8">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" CellPadding="4" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Names="Calibri" ForeColor="Black" Font-Size="X-Large" Width="1300px" BorderWidth="1px" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="game_name" HeaderText="game_name" SortExpression="game_name" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Cover">
                <ControlStyle Height="150" Width="250px" />
            </asp:ImageField>
            <asp:BoundField DataField="creator_name" HeaderText="creator_name" SortExpression="creator_name" />
            <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
            <asp:BoundField DataField="release_date" HeaderText="release_date" SortExpression="release_date" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <%--<asp:BoundField DataField="ratings" HeaderText="ratings" SortExpression="ratings" />--%>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:11project %>" SelectCommand="SELECT [game_name], [image], [creator_name], [company_name], [release_date], [description], [ratings] FROM [games] ORDER BY [game_name]"></asp:SqlDataSource>
</div>

</center>
</asp:Content>

