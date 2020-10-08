<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AuditRecords.aspx.vb" Inherits="TusIQData.AuditRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-2"> 
        </div>
        <div class="col-md-2"> 
            <%--<asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" width ="95%" horizonalalign="Center" text="Admin Console" Visible="True" PostBackUrl="~/Admin/AdminConsole.aspx" />--%>
        </div>
        <div class="col-md-2"> 

        </div>
        <div class="col-md-2"> 
             <%--<asp:Button ID="btnLogout" runat="server" class="btn btn-primary btn-lg" width ="95%" horizonalalign="Center" Text="Logout"  PostBackUrl="~/Default.aspx" />--%>
        </div>
      </div>
      <div class="row">
          <br />
      </div>
     <div class="row">
     <div class="col-md-2"> 
        </div>
        <div class="col-md"> 
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True"  horizonalAlign="Center" Width ="65%"  
                    DataSourceID="dsAuditRecords"  HeaderStyle-CssClass="headertxt" AlternatingRowStyle-CssClass="alt" CellPadding="4" ForeColor="#333333" GridLines="None">
<AlternatingRowStyle CssClass="alt" BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

<HeaderStyle CssClass="headertxt" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<PagerStyle CssClass="pgr" BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
        </div>
      </div>

 <asp:SqlDataSource ID="dsAuditRecords" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>"        
        
        SelectCommand="exec IQGetAuditRecords">
    </asp:SqlDataSource>
</asp:Content>
