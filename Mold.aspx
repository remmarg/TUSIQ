<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Mold.aspx.vb" Inherits="TusIQData.Mold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row">
        <div class="col-md-4"></div>
            <div class="col-md-4">
    <%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote" Font-Names="Verdana" Font-Size="8pt" Height="1500px" horizonalalign="center" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
            <ServerReport ReportServerUrl="http://10.25.3.80/ReportServer" ReportPath="/Tus_IQ/Molds" />
        </rsweb:ReportViewer>
            </div>
            <div class="col-md-4"></div>
            </div>
</asp:Content>
