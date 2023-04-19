<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        search available trains</p>
    <p>
        from:
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            Height="26px" Width="145px">
            <asp:ListItem>navsari</asp:ListItem>
            <asp:ListItem>surat</asp:ListItem>
            <asp:ListItem>valsad</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp; to:
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            Height="28px" Width="146px">
            <asp:ListItem>jamnagar</asp:ListItem>
            <asp:ListItem>bhuj</asp:ListItem>
            <asp:ListItem>rajkot</asp:ListItem>
            <asp:ListItem>chapra</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp; arrival time:
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
            Height="22px" Width="101px">
            <asp:ListItem>10:20</asp:ListItem>
            <asp:ListItem>11:25</asp:ListItem>
            <asp:ListItem>1:30</asp:ListItem>
            <asp:ListItem>9:57</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="arrival" HeaderText="arrival" 
                    SortExpression="arrival" />
                <asp:BoundField DataField="departure" HeaderText="departure" 
                    SortExpression="departure" />
                <asp:BoundField DataField="from_station" HeaderText="from_station" 
                    SortExpression="from_station" />
                <asp:BoundField DataField="to_station" HeaderText="to_station" 
                    SortExpression="to_station" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT [name], [arrival], [departure], [from_station], [to_station] FROM [train] WHERE (([from_station] = @from_station) AND ([to_station] = @to_station) AND ([arrival] = @arrival))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="from_station" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="to_station" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList3" Name="arrival" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

