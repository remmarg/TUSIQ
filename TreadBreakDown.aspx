<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="TreadBreakDown.aspx.vb" Inherits="TusIQData.TreadBreakDown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote" Font-Names="Verdana" Font-Size="8pt" Height="1500px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%" ZoomMode="PageWidth">
            <ServerReport ReportServerUrl="http://10.25.3.80/ReportServer" ReportPath="/Tus_IQ/rptTread" />
        </rsweb:ReportViewer>
</asp:Content>
