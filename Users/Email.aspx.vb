Imports System.Data.SqlClient
Imports System.Data
Public Class Email
    Inherits System.Web.UI.Page
    Public Shared u As MembershipUser
    Public Shared Phone1 As String
    Public Shared Phone2 As String
    Public Shared gbl_User As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If HttpContext.Current.User.Identity.IsAuthenticated Then
                Me.Label5.Text = Membership.GetUser().Comment
                'Me.UserName.Text = Membership.GetUser().UserName
                Me.Label4.Text = Membership.GetAllUsers().Count

            End If
            u = Membership.GetUser(User.Identity.Name)

            If Not IsPostBack Then EmailTextBox.Text = u.Email



            ' If Not IsPostBack Then Call PullNumbers()
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = "Page_Load" & (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try
    End Sub
    Protected Sub butUpdateEmail_Click(sender As Object, e As EventArgs) Handles butUpdateEmail.Click
        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim sqlStr1 As String
        Dim sqlStr2 As String
        Dim sqlStr3 As String
        Dim sqlStr4 As String
        Try

            'u.Email = EmailTextBox.Text
            conn.ConnectionString = ConfigurationManager.ConnectionStrings("aspnetdb_ConnectionString").ConnectionString
            conn.Open()
            cmd.Connection = conn
            sqlStr1 = " UPDATE [dbo].[aspnet_Membership] "
            sqlStr2 = " Set [Email] = '" & EmailTextBox.Text & "', [LoweredEmail] = '" & LCase(EmailTextBox.Text) & "' "
            sqlStr3 = " where UserID = "
            'sqlStr4 = " (SELECT [UserId] FROM [ASPNETDB].[dbo].[aspnet_Users]  where UserName = '" & Membership.GetUser().UserName & "') "
            sqlStr4 = " (SELECT [UserId] FROM [dbo].[aspnet_Users]  where UserName = '" & Membership.GetUser().UserName & "')"
            'MsgBox(sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandType = CommandType.Text
            cmd.ExecuteScalar()


            'Membership.UpdateUser(Membership.GetUser(User.Identity.Name))
            Msg.Text = "User e-mail updated."
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        End Try
    End Sub
End Class
