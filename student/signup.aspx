<%@ Page Language="VB" AutoEventWireup="false" CodeFile="signup.aspx.vb" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up Page</title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 196px;
        }
        .style3
        {
            width: 196px;
            height: 32px;
        }
        .style4
        {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="padding-left:25%">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="XX-Large" 
            ForeColor="#FF66CC" Text="Sign Up"></asp:Label>
&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label12" runat="server" Font-Size="15pt" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="username is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="White" Font-Size="12pt" 
                        TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="password is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Font-Size="15pt" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="White" Font-Size="12pt" 
                        TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="both passwords must be same "></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Font-Size="15pt" Text="Student Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="name is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Font-Size="15pt" Text="Percentage"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="percentage is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Font-Size="15pt" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Font-Size="15pt" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Font-Size="15pt" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="city is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Font-Size="15pt" Text="State"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox9" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="state is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label11" runat="server" Font-Size="15pt" Text="Stream"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" BackColor="White" Font-Size="12pt" 
                        Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="stream is must"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Size="12pt" style="height: 28px" 
            Text="Sign Up" />
        <br />
    
    </div>
    </form>
</body>
</html>
