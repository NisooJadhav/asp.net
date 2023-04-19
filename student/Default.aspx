<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 112px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="padding-left:25%">
    <div>    
        <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="XX-Large" 
            ForeColor="#FF66CC" Text="Student Log In"></asp:Label>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="True">new user?</asp:LinkButton>
    
        <br />
        <br />
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="username is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="password  is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>

    <br />

    <asp:Button ID="Button1" runat="server" Text="Log In" Font-Bold="True" />
    &nbsp;</form>
</body>
</html>
