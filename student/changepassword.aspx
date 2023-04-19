<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="changepassword.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 100%;
        }
        .style10
        {
            width: 471px;
        }
        .style11
        {
            width: 691px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style9">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" 
                    Text="Change Password"></asp:Label>
                <br />
                <br />
                Enter current password:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <br />
                Enter new password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <br />
                Confirm new password:&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" 
                    ControlToValidate="TextBox3" ErrorMessage="both passwords must match"></asp:CompareValidator>
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="submit" />
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

