Public Class Logoff
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            FormsAuthentication.SignOut()
            Response.Redirect("~\Default.aspx")



        Catch ex As Exception
            Dim errFiltered As String
            errFiltered = "Page_Load" & (Replace(ex.Message, "'", ""))
            'Msg.Text = errFiltered
        Finally
        End Try
    End Sub

End Class