<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="merit.aspx.vb" Inherits="Default2" title="Merit List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<asp:Label ID="Label2" runat="server" Text="Merit List"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem>BCA</asp:ListItem>
        <asp:ListItem>BCOM</asp:ListItem>
        <asp:ListItem>BBA</asp:ListItem>
        <asp:ListItem>MCA</asp:ListItem>
        <asp:ListItem>BE</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="percentage" HeaderText="percentage" 
                SortExpression="percentage" />
            <asp:BoundField DataField="stream" HeaderText="stream" 
                SortExpression="stream" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
        SelectCommand="SELECT [name], [email], [address], [percentage], [stream] FROM [stud] WHERE ([stream] = @stream)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="stream" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

