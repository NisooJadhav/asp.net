<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style>
        hr{
            width:75%;
        }
        form{
            padding: 2rem;
            border: 1px solid #666;
            border-radius: 25px;
            width: 80%;
            background-color:#fff;
            box-shadow:2px 5px 20px #00000050;
        }
        body{
            background-color:skyblue;
        }
        table{
            text-align:center;
        }
        .style1
        {
            height: 26px;
        }
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="XX-Large" ForeColor="#006600" Text="Product Management"></asp:Label>
            <hr/>
            <br />
            
        <asp:Label ID="Label1" runat="server" Text="Register" Font-Size="X-Large"></asp:Label>
    
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large">already a 
        user?</asp:LinkButton>
    
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="username"></asp:Label>
                &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
                &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="name"></asp:Label>
                &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="mobile"></asp:Label>
                &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="email"></asp:Label>
                &nbsp;
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            </table>
            <br/>
            <hr/>
        <asp:Button ID="Button1" runat="server" Text="Register" />
    </div>
    </form>
</body>
</html>
