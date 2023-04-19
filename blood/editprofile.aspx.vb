Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\blood\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("update blood set address='" + TextBox1.Text + "',city='" + TextBox2.Text + "',state='" + TextBox3.Text + "',mobile='" + TextBox4.Text + "',email='" + TextBox5.Text + "',donatedate='" + TextBox6.Text + "'where username='" + Session("un") + "'", cn)
        Dim chk As Integer
        cn.Open()
        chk = cmd.ExecuteNonQuery
        cn.Close()
        If (chk = 1) Then
            MsgBox("your info updated successfully")
        Else
            MsgBox("some error occured try again")
        End If
    End Sub
End Class
