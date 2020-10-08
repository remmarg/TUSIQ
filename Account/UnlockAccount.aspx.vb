Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.UI
Public Class UnlockAccount
    Inherits System.Web.UI.Page

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    'End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Msg.Text = Nothing
        Try
            Me.txtComment.Text = Membership.GetUser(Me.TextBox1.Text).Comment
            Me.CheckBox1.Checked = Membership.GetUser(Me.TextBox1.Text).IsLockedOut
            Dim locked As Boolean

            Select Case locked
                Case 0
                    Me.CheckBox1.Text = "Not Locked"
                Case 1
                    Me.CheckBox1.Text = "Locked"
            End Select
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace("Bad ChorusID " & ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Msg.Text = Nothing
        Try
            Membership.GetUser(Me.TextBox1.Text).UnlockUser()
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try
    End Sub
End Class
