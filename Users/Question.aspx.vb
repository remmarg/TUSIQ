Imports System.Data.SqlClient
Imports System.Data
Public Class Question
    Inherits System.Web.UI.Page
    Public Shared u As MembershipUser
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            u = Membership.GetUser(User.Identity.Name)
            If Not IsPostBack Then QuestionTextbox.Text = u.PasswordQuestion
            ' Call ReturnAnswer()
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try
    End Sub
    Protected Sub ChangePasswordQuestion_OnClick(sender As Object, e As System.EventArgs) Handles ChangePasswordQuestionButton.Click
        Try
            Dim u As MembershipUser = Membership.GetUser(User.Identity.Name)
            Dim result As Boolean
            result = u.ChangePasswordQuestionAndAnswer(PasswordTextbox.Text,
                                            QuestionTextbox.Text,
                                            AnswerTextbox.Text)

            If (result = True) Then
                Msg.Text = "Password Question and Answer changed."
            Else
                Msg.Text = "Password Question and Answer change failed."
            End If
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try
    End Sub
    Protected Sub ReturnAnswer()

        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim sqlStr1 As String
        Dim sqlStr2 As String
        Dim sqlStr3 As String
        Dim sqlStr4 As String

        Try


            conn.ConnectionString = ConfigurationManager.ConnectionStrings("aspnetdb_ConnectionString").ConnectionString
            conn.Open()
            cmd.Connection = conn

            sqlStr1 = " SELECT [PasswordAnswer] "
            sqlStr2 = " FROM [dbo].[aspnet_Membership] "
            sqlStr3 = " where UserID = (SELECT [UserId] FROM [dbo].[aspnet_Users]   "
            sqlStr4 = " where UserName = '" & Membership.GetUser().UserName & "') "
            ' MsgBox((sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4))
            cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandType = CommandType.Text
            Me.AnswerTextbox.Text = cmd.ExecuteScalar()
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
            If Not IsNothing(cmd) Then cmd.Dispose()
            If conn.State = ConnectionState.Open Then conn.Close()
        End Try
    End Sub
End Class