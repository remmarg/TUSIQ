Imports System.Data.SqlClient
Imports System.Data
Public Class Phone
    Inherits System.Web.UI.Page
    Public Shared u As MembershipUser
    Public Shared Phone1 As String
    Public Shared Phone2 As String
    Public Shared gbl_User As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If HttpContext.Current.User.Identity.IsAuthenticated Then
                Me.Label5.Text = Membership.GetUser().Comment
                Me.UserName.Text = Membership.GetUser().UserName
                Me.Label4.Text = Membership.GetAllUsers().Count

            End If
            u = Membership.GetUser(User.Identity.Name)

            'If Not IsPostBack Then EmailTextBox.Text = u.Email



            If Not IsPostBack Then Call PullNumbers()
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = "Page_Load" & (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try
    End Sub
    Protected Sub UpdatePhoneNumbers_Click(sender As Object, e As EventArgs) Handles UpdatePhoneNumbers.Click

        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim sqlStr1 As String
        Dim sqlStr2 As String
        Dim sqlStr3 As String
        Dim sqlStr4 As String
        Dim CNT As Integer
        Dim Phone1 As String
        Dim Phone2 As String
        Try
            Phone1 = PrimaryPhoneText.Text
            Phone2 = SecondaryPhoneText.Text

            conn.ConnectionString = ConfigurationManager.ConnectionStrings("aspnetdb_ConnectionString").ConnectionString
            conn.Open()
            cmd.Connection = conn

            sqlStr1 = " SELECT count([UserId])"
            sqlStr2 = " FROM [dbo].[aspnet_UsersPhone] "
            sqlStr3 = " where UserID = (SELECT [UserId] FROM [dbo].[aspnet_Users]   "
            sqlStr4 = " where UserName = '" & Membership.GetUser().UserName & "') "
            ' MsgBox((sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4))
            cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandType = CommandType.Text
            CNT = cmd.ExecuteScalar()



            If CNT > 0 Then
                sqlStr1 = " UPDATE [dbo].[aspnet_UsersPhone] "
                sqlStr2 = " Set [Phone1] = '" & Phone1 & "', [Phone2] = '" & Phone2 & "' "
                sqlStr3 = " where UserID = "
                'sqlStr4 = " (SELECT [UserId] FROM [ASPNETDB].[dbo].[aspnet_Users]  where UserName = '" & Membership.GetUser().UserName & "') "
                sqlStr4 = " (SELECT [UserId] FROM [dbo].[aspnet_Users]  where UserName = '" & Membership.GetUser().UserName & "')"
                'MsgBox(sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
                cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
                cmd.CommandType = CommandType.Text
                cmd.ExecuteScalar()

            Else
                'MsgBox("0")
                sqlStr1 = " INSERT INTO   aspnet_UsersPhone(UserId, Phone1, Phone2) "
                sqlStr2 = " VALUES ("
                sqlStr3 = " (SELECT [UserId] FROM [dbo].[aspnet_Users] where UserName = '" & Membership.GetUser().UserName & "')"
                sqlStr4 = " , '" & Phone1 & "','" & Phone2 & "' ) "
                'MsgBox(sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
                cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
                cmd.CommandType = CommandType.Text
                cmd.ExecuteScalar()

            End If

            'INSERT INTO   aspnet_UsersPhone(UserId, Phone1, Phone2)
            'VALUES('1F539AE9-EA9D-4F92-A701-68AFFE4BE10B', '2056147846','2053339624' )
            Msg.Text = "Phone Numbers updated."
        Catch ex As Exception
            'MsgBox(Membership.GetUser().UserName)
            ' MsgBox(CNT)
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
            If Not IsNothing(cmd) Then cmd.Dispose()
            If conn.State = ConnectionState.Open Then conn.Close()
        End Try
    End Sub
    Public Sub PullNumbers()

        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim sqlStr1 As String
        Dim sqlStr2 As String
        Dim sqlStr3 As String
        Dim sqlStr4 As String
        Dim CNT As Integer
        Try
            conn.ConnectionString = ConfigurationManager.ConnectionStrings("aspnetdb_ConnectionString").ConnectionString
            conn.Open()
            cmd.Connection = conn

            sqlStr1 = " SELECT count([UserId])"
            sqlStr2 = " FROM [dbo].[aspnet_UsersPhone] "
            sqlStr3 = " where UserID = (SELECT [UserId] FROM [dbo].[aspnet_Users]   "
            sqlStr4 = " where UserName = '" & Membership.GetUser().UserName & "') "

            cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandType = CommandType.Text
            CNT = cmd.ExecuteScalar()
            If CNT > 0 Then

                sqlStr1 = " SELECT Phone1 "
                sqlStr2 = " FROM [dbo].[aspnet_UsersPhone] "
                sqlStr3 = " where UserID = (SELECT [UserId] FROM [dbo].[aspnet_Users]   "
                sqlStr4 = " where UserName = '" & Membership.GetUser().UserName & "') "
                cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
                cmd.CommandType = CommandType.Text
                PrimaryPhoneText.Text = cmd.ExecuteScalar()

                sqlStr1 = " SELECT Phone2 "
                sqlStr2 = " FROM [dbo].[aspnet_UsersPhone] "
                sqlStr3 = " where UserID = (SELECT [UserId] FROM [dbo].[aspnet_Users]   "
                sqlStr4 = " where UserName = '" & Membership.GetUser().UserName & "') "

                cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
                cmd.CommandType = CommandType.Text
                SecondaryPhoneText.Text = cmd.ExecuteScalar()


            Else
            End If





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
