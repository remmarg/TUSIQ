Imports System.Data.SqlClient
Imports System.Data
Public Class Password
    Inherits System.Web.UI.Page
    Public Shared u As MembershipUser
    Public Shared Phone1 As String
    Public Shared Phone2 As String
    Public Shared gbl_User As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If HttpContext.Current.User.Identity.IsAuthenticated Then
                Me.Label5.Text = Membership.GetUser().Comment
                ' Me.UserName.Text = Membership.GetUser().UserName
                Me.Label4.Text = Membership.GetAllUsers().Count

            End If
            u = Membership.GetUser(User.Identity.Name)
            ' If Not IsPostBack Then EmailTextBox.Text = u.Email

        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = "Page_Load" & (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try
    End Sub
    Protected Sub CancelPushButton_Click(sender As Object, e As EventArgs)

    End Sub
End Class