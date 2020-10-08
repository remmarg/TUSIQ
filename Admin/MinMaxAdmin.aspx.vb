Public Class MinMaxAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.gvCustomres.Visible = "True"
            Me.gvBelts.Visible = "False"
        End If


    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim strSelected As String
        strSelected = Me.DropDownList1.SelectedValue
        Select Case strSelected
            Case "BELT"
                Me.gvCustomres.Visible = "False"
                Me.gvBelts.Visible = "True"
            Case Else
                Me.gvCustomres.Visible = "true"
                Me.gvBelts.Visible = "False"

        End Select

    End Sub

End Class