Imports System.Data
Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=G:\asp\student\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("update stud set stream='" + DropDownList1.SelectedItem.Text + "'where username='" + Session("un") + "'", cn)
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        MsgBox(DropDownList1.SelectedItem.Text + " added successfully")
    End Sub
End Class