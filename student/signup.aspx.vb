Imports System.Data
Imports System.Data.SqlClient

Partial Class signup
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=G:\asp\student\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
            Dim cmd As New SqlCommand("Insert into stud(username, password, name, percentage, email, address, city, state, stream)values(@username, @password, @name, @percentage, @email, @address, @city, @state, @stream)", cn)
            cmd.Parameters.AddWithValue("@username", TextBox1.Text)
            cmd.Parameters.AddWithValue("@password", TextBox2.Text)
            cmd.Parameters.AddWithValue("@name", TextBox4.Text)
            cmd.Parameters.AddWithValue("@percentage", TextBox5.Text)
            cmd.Parameters.AddWithValue("@email", TextBox6.Text)
            cmd.Parameters.AddWithValue("@address", TextBox7.Text)
            cmd.Parameters.AddWithValue("@city", TextBox8.Text)
            cmd.Parameters.AddWithValue("@state", TextBox9.Text)
            cmd.Parameters.AddWithValue("@stream", TextBox10.Text)
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