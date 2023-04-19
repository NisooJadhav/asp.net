<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <i><u>Search available Movies</u></i>
    <hr/>
    &nbsp;<br />
    Duration(in hours):
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>1.5</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>2.5</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>3.5</asp:ListItem>
    </asp:DropDownList>
&nbsp; Language:
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
        <asp:ListItem>english</asp:ListItem>
        <asp:ListItem>hindi</asp:ListItem>
        <asp:ListItem>gujarati</asp:ListItem>
        <asp:ListItem>marathi</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="duration" HeaderText="duration" 
            SortExpression="duration" />
        <asp:BoundField DataField="language" HeaderText="language" 
            SortExpression="language" />
    </Columns>
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
    SelectCommand="SELECT [name], [duration], [language] FROM [movie_details] WHERE (([duration] = @duration) AND ([language] = @language)) ORDER BY [duration] DESC">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList2" DefaultValue="1.5" 
            Name="duration" PropertyName="SelectedValue" Type="Double" />
        <asp:ControlParameter ControlID="DropDownList3" DefaultValue="english" 
            Name="language" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

