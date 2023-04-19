Imports System.Data
Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\student\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select count(username) from stud where username= '" + Session("un") + "' and password=@password", cn)
        cmd.Parameters.AddWithValue("@password", TextBox1.Text)
        cn.Open()
        Dim chk As Integer = cmd.ExecuteScalar()
        cn.Close()
        If chk > 0 Then
            Dim cmdx As New SqlCommand("update stud set password='" + TextBox3.Text + "'where username ='" + Session("un") + "'", cn)
            cn.Open()
            cmdx.ExecuteNonQuery()
            cn.Close()
            MsgBox("password changed successfully")
        Else
            MsgBox("password not same")
        End If
    End Sub
End Class
