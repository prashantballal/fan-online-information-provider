<%@ Page Title="FAN ~ Movie" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Movie.aspx.cs" Inherits="Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<center>
<div style="height: auto; background-color: #006699; opacity: 0.7">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="MOVIES" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <br />
</div>

<div style="min-height:500px; max-height:2000 px; background-color: #000000; opacity:0.8">
    <br />
    <asp:GridView ID="GridView1" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="Black" Width="1300px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="X-Large" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="movie_name" HeaderText="movie_name" SortExpression="movie_name" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Cover">
                <ControlStyle Height="150" Width="250px" />
            </asp:ImageField>
            <asp:BoundField DataField="writer_name" HeaderText="writer_name" SortExpression="writer_name" />
            <asp:BoundField DataField="director_name" HeaderText="director_name" SortExpression="director_name" />
            <asp:BoundField DataField="producer_name" HeaderText="producer_name" SortExpression="producer_name" />
            <asp:BoundField DataField="starring" HeaderText="starring" SortExpression="starring" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:11project %>" SelectCommand="SELECT [movie_name], [image], [writer_name], [director_name], [producer_name], [starring], [release_date], [description], [ratings] FROM [movies] ORDER BY [movie_name]"></asp:SqlDataSource>
</div>

</center>
</asp:Content>

