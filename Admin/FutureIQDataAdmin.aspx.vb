Imports System.Data.SqlClient
Imports System.Data
Public Class FutureIQDataAdmin1
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    If Not IsPostBack Then
        Me.gvFutureIQInputs.Visible = "True"
        'Me.gvFutureBeltInputs.Visible = "False"
    End If
End Sub

Protected Sub btnAddNewRecord_Click(sender As Object, e As EventArgs) Handles btnAddNewRecord.Click
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim sqlStr1 As String
    Dim sqlStr2 As String

        Try
            Dim EDate As DateTime = Me.txtNewEffectiveDate.Text
            Dim Cid As Integer = Me.txtNewComponentId.Text
            Dim Comptype As String = Me.ddlNewComponentType.SelectedValue
            Dim CompDemand As String = Me.txtNewDemand.Text
            Dim MinInv As String = Me.txtNewMinInventory.Text
            Dim MaxInv As String = Me.txtNewMaxInventory.Text
            Dim Mach As String = Me.txtMachine.Text
            Dim Packaging As String = Me.ddlComponentPackaging.SelectedValue


            conn.ConnectionString = ConfigurationManager.ConnectionStrings("MMRPDataDevConnectionString").ConnectionString
        conn.Open()
            cmd.Connection = conn

            'INSERT INTO IQFutureInputs
            '             (FutureInputId, EffectiveDate, ComponentID, ComponentType, ComponentDemand, ComponentMinInventory, ComponentMaxInventory, ComponentPackaging, ComponentMachine)
            'VALUES(,,,,,,,,)



            sqlStr1 = " INSERT INTO IQFutureInputs ( EffectiveDate, ComponentID, ComponentType, ComponentDemand, ComponentMinInventory, ComponentMaxInventory, ComponentPackaging, ComponentMachine) "
            sqlStr2 = " Values ('" & EDate & "','" & Cid & "','" & Comptype & "' ,'" & CompDemand & "','" & MinInv & "','" & MaxInv & "' ,'" & Mach & "' ,'" & Packaging & "') "

            ''MsgBox(sqlStr1 & sqlStr2 & sqlStr3 & sqlStr4)
            cmd.CommandText = (sqlStr1 & sqlStr2)
        cmd.CommandType = CommandType.Text
        cmd.ExecuteScalar()
            Me.gvFutureIQInputs.DataBind()
        Catch ex As Exception
        Dim errFiltered As String
        errFiltered = (Replace(ex.Message, "'", ""))
            Me.lblTest.Text = errFiltered
        Finally
    End Try
End Sub


End Class