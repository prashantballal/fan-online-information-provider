<%@ Page Title="FAN ~ Novel" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Novel.aspx.cs" Inherits="Novel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<center>
<div style="height: auto; background-color: #006699; opacity: 0.7">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="STORIES AND NOVELS" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <br />
</div>

<div style="min-height:500px; max-height:10000px; background-color: #000000; opacity: 0.8">
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="Black" Width="1300px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="novel_name" HeaderText="novel_name" SortExpression="novel_name" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Cover">
                <ControlStyle Height="150" Width="250px" />
            </asp:ImageField>
            <asp:BoundField DataField="writer_name" HeaderText="writer_name" SortExpression="writer_name" />
            <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:11project %>" SelectCommand="SELECT [novel_name], [image], [writer_name], [publisher_name], [release_date], [description], [ratings] FROM [novels] ORDER BY [novel_name]"></asp:SqlDataSource>
</div>

</center>
</asp:Content>

