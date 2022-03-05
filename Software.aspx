<%@ Page Title="FAN ~ Software" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Software.aspx.cs" Inherits="Software" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<center>
<div style="height: auto; background-color: #006699; opacity: 0.7">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="SOFTWARES" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <br />
</div>

<div style="min-height:500px; max-height:10000px; background-color: #000000; opacity: 0.8">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="Black" BorderStyle="None" Font-Size="X-Large" Width="1300px" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" EmptyDataText="Null" Font-Bold="True" Font-Names="Calibri" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="software_name" HeaderText="software name" SortExpression="software_name" />
            <%--<asp:BoundField DataField="image" HeaderText="" SortExpression="image" />--%>
            <asp:ImageField DataImageUrlField="image" HeaderText="Cover">
                <ControlStyle Height="150" Width="250px" />
            </asp:ImageField>
            <asp:BoundField DataField="developer_name" HeaderText="developer name" SortExpression="developer_name" />
            <asp:BoundField DataField="company_name" HeaderText="company name" SortExpression="company_name" />
            <asp:BoundField DataField="release_date" HeaderText="release date" SortExpression="release_date" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:11project %>" SelectCommand="SELECT * FROM [softwares] ORDER BY [software_name]"></asp:SqlDataSource>
</div>

</center>
</asp:Content>

