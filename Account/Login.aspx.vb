Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Microsoft.Owin.Security
Imports Owin

Partial Public Class Login
    Inherits Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            Dim returnUrl = HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))
            If Not [String].IsNullOrEmpty(returnUrl) Then
                RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))
            End If
        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = (Replace(ex.Message, "'", ""))
            'Msg.Text = errFiltered
        Finally
        End Try
    End Sub


End Class
