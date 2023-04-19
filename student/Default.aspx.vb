Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=G:\asp\student\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        cmd = New SqlCommand("select count(username) from stud where username= '" + TextBox1.Text + "' and password ='" + TextBox2.Text + "'", cn)
        cn.Open()
        Dim c As Integer = cmd.ExecuteScalar
        cn.Close()
        If c >= 1 Then
            Session("un") = TextBox1.Text
            Response.Redirect("~/streamselection.aspx")
        Else
            MsgBox("invalid username or password, check again")
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Server.Transfer("~/signup.aspx")
    End Sub
End Class
