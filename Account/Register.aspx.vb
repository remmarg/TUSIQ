Imports System.Data.SqlClient
Imports System.Data
Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Owin

Partial Public Class Register
    Inherits Page
    Public Shared Comment As String 'Comment is the field where I store the Name of the user
    Public Shared Chorus As String  ' Chorus is what I store in the User Name Field
    Public Shared Pw As String
    Public Shared gbl_EMail As String

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim sqlStr1 As String
        Dim sqlStr2 As String
        Dim sqlStr3 As String
        Dim sqlStr4 As String
        Comment = Me.NameText.Text
        Chorus = Me.UserNameText.Text
        Pw = Me.PassText.Text
        gbl_EMail = Me.EmailText.Text
        Try '
            Membership.CreateUser(Chorus, Pw, gbl_EMail)
            conn.ConnectionString = ConfigurationManager.ConnectionStrings("aspnetdb_ConnectionString").ConnectionString
            conn.Open()
            cmd.Connection = conn
            sqlStr1 = " UPDATE [ASPNETDB].[dbo].[aspnet_Membership] "
            sqlStr2 = " Set [Comment] = '" & Comment & "',[PasswordQuestion] = '1000+1=' ,[PasswordAnswer]='1001'"
            sqlStr3 = " where UserID = "
            sqlStr4 = " (SELECT [UserId] FROM [ASPNETDB].[dbo].[aspnet_Users]  where UserName = '" & Chorus & "') "
            'MsgBox(sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandType = CommandType.Text
            cmd.ExecuteScalar()
            Me.NameText.Text = ""
            Me.UserNameText.Text = ""
            Me.EmailText.Text = ""
            Msg.Text = "User " & Comment & " Created!"
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            Msg.Text = errFiltered
        Finally
        End Try

    End Sub
    Protected Sub Add_Additional_Info()
        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim sqlStr1 As String
        Dim sqlStr2 As String
        Dim sqlStr3 As String
        Dim sqlStr4 As String

        Try '
            conn.ConnectionString = ConfigurationManager.ConnectionStrings("aspnetdb_ConnectionString").ConnectionString
            conn.Open()
            cmd.Connection = conn
            sqlStr1 = " SELECT [UserId] FROM [ASPNETDB].[dbo].[aspnet_Users]  where UserName = '" & Chorus & "'"
            cmd.CommandText = (sqlStr1)
            cmd.CommandType = CommandType.Text
            MsgBox(cmd.ExecuteScalar())

            sqlStr1 = " UPDATE [ASPNETDB].[dbo].[aspnet_Membership] "
            sqlStr2 = " Set [Comment] = '" & Comment & "'"
            sqlStr3 = " where UserID = "
            sqlStr4 = " (SELECT [UserId] FROM [ASPNETDB].[dbo].[aspnet_Users]  where UserName = '" & Chorus & "') "
            'MsgBox(sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandText = (sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandType = CommandType.Text
            cmd.ExecuteScalar()

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
