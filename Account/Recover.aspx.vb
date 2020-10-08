Imports System
Imports System.Web.UI.WebControls
Imports System.Net.Mail
Public Class Recover
    Inherits System.Web.UI.Page
    Public Shared newPassword As String
    Public Shared NoEmail As Boolean = False 'Double negative false means yes we do have email
    Public Shared strEmail As String
    Private u As MembershipUser
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Membership.EnablePasswordReset Then
            FormsAuthentication.RedirectToLoginPage()
        End If
        If NoEmail = False Then
            Me.Label5.Text = "Enter chorus number and answer security question to send a new password to your registered email!"
        Else
            Me.Label5.Text = "Enter chorus number and answer security question to send a new password to your registered email!"
        End If
        Msg.Text = ""

        If Not IsPostBack Then
            Msg.Text = "Please supply a username."
        Else
            VerifyUsername()
            newPassword = "Contact local IS department"
        End If
    End Sub

    Public Sub VerifyUsername()
        u = Membership.GetUser(UsernameTextBox.Text, False)

        If u Is Nothing Then
            Msg.Text = "Username " & Server.HtmlEncode(UsernameTextBox.Text) & " not found. Please check the value and re-enter."
            QuestionLabel.Text = ""
            QuestionLabel.Enabled = False
            AnswerTextBox.Enabled = False
            ResetPasswordButton.Enabled = False
        Else
            QuestionLabel.Text = u.PasswordQuestion
            QuestionLabel.Enabled = True
            AnswerTextBox.Enabled = True
            ResetPasswordButton.Enabled = True
        End If
    End Sub

    Public Sub ResetPassword_OnClick(ByVal sender As Object, ByVal args As EventArgs)

        u = Membership.GetUser(UsernameTextBox.Text, False)

        If u Is Nothing Then
            Msg.Text = "Username " & Server.HtmlEncode(UsernameTextBox.Text) & " not found. Please check the value and re-enter."
            Return
        End If

        Try
            newPassword = u.ResetPassword(AnswerTextBox.Text)
            'newPassword = MembershipUser.ResetPassword(AnswerTextBox.Text, False)
            Me.Label4.Text = newPassword
            Call MailIt()



        Catch e As MembershipPasswordException
            Msg.Text = "Invalid password answer. Please re-enter and try again."
            Return
        Catch e As Exception
            Msg.Text = e.Message
            Return
        End Try

        If newPassword IsNot Nothing Then
            newPassword = Server.HtmlEncode(newPassword)
            If NoEmail = True Then
                Msg.Text = "This is your new password " + "<br/>" + newPassword
            Else

                Msg.Text = "Check your email (" & Me.UsernameTextBox.Text & "  " & strEmail & ") for your new password"
            End If
        Else
            Msg.Text = "Password reset failed. Please re-enter your values and try again."
        End If
    End Sub

    Protected Sub MailIt()
        Dim smtpClient As SmtpClient = New SmtpClient("notesgwna.michelin.com", 25)
        'notesgwna.michelin.com
        'smtpClient.Credentials = New System.Net.NetworkCredential("user@example.com", "password")
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network

        Dim mailMessage As MailMessage = New MailMessage("Jeff.Grammer@Michelin.Com", strEmail)
        mailMessage.Subject = "New Password"
        mailMessage.Body = "Password reset. Your new password is: " & newPassword

        Try
            smtpClient.Send(mailMessage)
            'Msg.Text = "Check your email (" & Me.UsernameTextBox.Text & "  " & strEmail & ") for your new password"
        Catch ex As Exception
            Msg.Text = ex.ToString
        End Try
    End Sub
    Protected Sub UsernameTextBox_TextChanged(sender As Object, e As EventArgs) Handles UsernameTextBox.TextChanged

        Try

            If NoEmail = True Then
                Msg.Text = "Email retrieval is not available"
            Else
                strEmail = System.Web.Security.Membership.GetUser(Me.UsernameTextBox.Text).Email
                Msg.Text = "This is the email address you have registered" + "<br/>" + strEmail
            End If

        Catch ex As Exception
            Msg.Text = ex.ToString + "<br/>" + newPassword
        End Try

    End Sub


End Class
