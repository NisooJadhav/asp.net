Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub TextBox3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox3.TextChanged
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\movie\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("update movie set mobile='" + TextBox1.Text + "',email='" + TextBox2.Text + "',city='" + TextBox3.Text + "',state='" + TextBox4.Text + "'where username='" + Session("un") + "'", cn)
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

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

    End Sub
End Class
