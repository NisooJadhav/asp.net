<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
    Search<br />
    <a href="Default.aspx?Theme=SkinFile">Pink</a>


    <table class="style1">
        <tr>
            <td>
                blood group</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    style="height: 22px">
                    <asp:ListItem>A+ve</asp:ListItem>
                    <asp:ListItem>B+ve</asp:ListItem>
                    <asp:ListItem>O+ve</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                city</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="navsari">navsari</asp:ListItem>
                    <asp:ListItem>surat</asp:ListItem>
                    <asp:ListItem>valsad</asp:ListItem>
                    <asp:ListItem>vapi</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                state</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                    <asp:ListItem>gujarat</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="730px">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" 
                            SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="city" 
                            SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="blood" HeaderText="blood" SortExpression="blood" />
                        <asp:BoundField DataField="donatedate" HeaderText="donatedate" 
                            SortExpression="donatedate" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" 
                            SortExpression="pincode" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
                    
                    SelectCommand="SELECT [name], [email], [mobile], [address], [city], [state], [blood], [donatedate], [pincode] FROM [blood] WHERE (([blood] = @blood) AND ([city] = @city) AND ([state] = @state))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="A+ve" 
                            Name="blood" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" DefaultValue="navsari" 
                            Name="city" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList3" DefaultValue="gujarat" 
                            Name="state" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
<br />
<br />
</asp:Content>

