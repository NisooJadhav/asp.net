Imports System.Data
Imports System.Data.SqlClient

Partial Class register

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("/movie/default.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\product\App_Data\Database.mdf;Integrated Security=True;User Instance=TrueData Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\product\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
            Dim cmd As New SqlCommand("insert into user_details(username,password,name,mobile,email) values(@a,@b,@c,@d,@e)", cn)
            cmd.Parameters.AddWithValue("@a", TextBox1.Text)
            cmd.Parameters.AddWithValue("@b", TextBox2.Text)
            cmd.Parameters.AddWithValue("@c", TextBox3.Text)
            cmd.Parameters.AddWithValue("@d", TextBox4.Text)
            cmd.Parameters.AddWithValue("@e", TextBox5.Text)
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()
            MsgBox("registration successful")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Response.Redirect("~/Default.aspx")
    End Sub
End Class
