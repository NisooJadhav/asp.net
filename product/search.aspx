<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br/>
    <i><u>Search available products</u></i>
    <hr/>
    <br />
    Product Name
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem>Laptop</asp:ListItem>
        <asp:ListItem>RAM</asp:ListItem>
        <asp:ListItem>GPU</asp:ListItem>
        <asp:ListItem>Mechanical Keyboard</asp:ListItem>
        <asp:ListItem>Mouse</asp:ListItem>
        <asp:ListItem>Speakers</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp; Price
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
        <asp:ListItem>250</asp:ListItem>
        <asp:ListItem>5000</asp:ListItem>
        <asp:ListItem Value="45000">45000</asp:ListItem>
        <asp:ListItem>500</asp:ListItem>
        <asp:ListItem>1000</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="prod_name" HeaderText="prod_name" 
                SortExpression="prod_name" />
            <asp:BoundField DataField="prod_price" HeaderText="prod_price" 
                SortExpression="prod_price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [prod_name], [prod_price] FROM [product] WHERE (([prod_name] = @prod_name) OR ([prod_price] = @prod_price))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" 
                Name="prod_name" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="250" 
                Name="prod_price" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

