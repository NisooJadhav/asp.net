Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox2.TextChanged
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\asp\product\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("update user_details set mobile='" + TextBox1.Text + "',email='" + TextBox2.Text + "'where username='" + Session("un") + "'", cn)
        Dim chk As Integer
        cn.Open()
        chk = cmd.ExecuteNonQuery
        cn.Close()
        If (chk = 1) Then
            MsgBox("your info updated successfully")
        Else
            MsgBox("edit profile")
        End If
    End Sub
End Class