<%@ Page Title="FAN ~ Anime" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Anime.aspx.cs" Inherits="Anime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<center>
<div style="height: auto; background-color: #006699; opacity: 0.7">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="CARTOONS AND ANIMES" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <br />
</div>

<div style="min-height:500px; max-height:2000 px; background-color: #000000; opacity:0.8">
    <br />
    <asp:GridView ID="GridView1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Width="1300px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="anime_name" HeaderText="anime_name" SortExpression="anime_name" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Cover">
                <ControlStyle Height="150" Width="250px" />
            </asp:ImageField>
            <asp:BoundField DataField="creator_name" HeaderText="creator_name" SortExpression="creator_name" />
            <asp:BoundField DataField="producer_name" HeaderText="producer_name" SortExpression="producer_name" />
            <asp:BoundField DataField="release_date" HeaderText="release_date" SortExpression="release_date" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:11project %>" SelectCommand="SELECT [anime_name], [image], [creator_name], [producer_name], [release_date], [description] FROM [animes] ORDER BY [anime_name]"></asp:SqlDataSource>
</div>

</center>
</asp:Content>

