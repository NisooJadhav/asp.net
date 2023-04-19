<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div style="margin-left: 0px">
    
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="XX-Large" ForeColor="#006600" Text="Product Management"></asp:Label>
            <hr/>
        <br />
&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label1" runat="server" Text="Log In" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large">new user?</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="username:" Font-Size="Large"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="password:" Font-Size="Large"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <hr/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
    </form>
</body>
</html>
