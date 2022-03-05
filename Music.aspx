<%@ Page Title="FAN ~ Music" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeFile="Music.aspx.cs" Inherits="Music" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<center>
<div style="height: auto; background-color: #006699; opacity: 0.7">
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="SONGS AND MUSICS" Font-Names="Gill Sans Ultra Bold" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <br />
</div>

<div style="min-height:500px; max-height:2000 px; background-color: #000000; opacity:0.8">
    <br />
    <asp:GridView ID="GridView1" runat="server" Font-Names="Calibri" Font-Size="X-Large" ForeColor="Black" Width="1300px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="song_name" HeaderText="song_name" SortExpression="song_name" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Cover">
                <ControlStyle Height="150" Width="250px" />
            </asp:ImageField>
            <asp:BoundField DataField="lyrics_by" HeaderText="lyrics_by" SortExpression="lyrics_by" />
            <asp:BoundField DataField="music_by" HeaderText="music_by" SortExpression="music_by" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:11project %>" SelectCommand="SELECT [song_name], [image], [lyrics_by], [music_by], [release_date], [description], [ratings] FROM [musicals] ORDER BY [song_name]"></asp:SqlDataSource>
</div>

</center>
</asp:Content>

