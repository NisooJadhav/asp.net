<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
    <center>
        <table class="style1" style="width:30%">
            <tr>
                <td class="style2" colspan="2">
                    <br />
                    <center>
                <asp:Label ID="Label2" runat="server" Text="Blood Donation Site" Font-Bold="True" 
                            Font-Italic="True" ForeColor="#FF3300"></asp:Label>
                </center>
                    <br />
                    <br />
                    <center>
                    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server">new user?</asp:LinkButton>
                    <br><br>
                </td>
            </tr>
            <tr>
                <td>
                <center>
                    username</td>
                <td>
                <center>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                <center>
                    password</td>
                <td>
                <center>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <center>
                <br><br>
                    <asp:Button ID="Button1" runat="server" Text="Log In" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    </center>
</body>
</html>
