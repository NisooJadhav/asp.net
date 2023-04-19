Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\product\App_Data\Database.mdf;Integrated Security=True;User Instance=TrueData Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\product\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select count(username) from user_details where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", cn)
        cn.Open()
        Dim count = cmd.ExecuteScalar
        cn.Close()
        If count > 0 Then
            Session("un") = TextBox1.Text
            MsgBox("logged in successfully")
            Response.Redirect("~/search.aspx")
        Else
            MsgBox("invalid email or password")
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/register.aspx")
    End Sub
End Class
