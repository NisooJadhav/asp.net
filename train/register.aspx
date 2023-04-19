<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 28px;
        }
        .style3
        {
            width: 242px;
        }
        .style4
        {
            height: 28px;
            width: 242px;
        }
        .style5
        {
            width: 242px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: 'Noto Sans'; font-size: large; font-weight: bold; vertical-align: middle; text-align: center; color: #FF0000; font-style: italic;">
    
        <br />
        Train TimeTable Registration<br />
        <br />
    
    </div>
    <center>
    <table class="style1" 
        
            style="font-family: Consolas; font-size: x-large; font-weight: bold; text-align: left; width:50%">
        <tr>
            <td class="style5">
                enter username:
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                enter password:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                enter name:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                enter email:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                mobile:</td>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                city:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                state:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        </table>
    <br >
    <center>
        <asp:Button ID="Button1" runat="server" Text="Register" BorderWidth="1px" 
            Font-Bold="True" Font-Size="Large" />
    &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server">existing user?</asp:LinkButton>
    </form>
</body>
</html>
