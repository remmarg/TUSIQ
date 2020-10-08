<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="MinMaxAdmin.aspx.vb" Inherits="TusIQData.MinMaxAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="jumbotron">
    <div class="row">
        <br />
    </div>

    <div class="row">
        <div class="col-md-2"> </div>
        <div class="col-md">
            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Choose a Component Type:</asp:Label>
                

    </div>
       <div class="row">
        <br />
    </div>

    <div class="row">
        <div class="col-md-2"> </div>
        <div class="col-md-2">
           <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="dsComponentTypes" DataTextField="fldCompType" CssClass="form-control" DataValueField="fldCompType"> </asp:DropDownList>
        </div>
        <div class="col-md-2">
                <%--<asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" width ="95%" horizonalalign="Center" text="Admin Console >>" Visible="True" PostBackUrl="~/Admin/AdminConsole.aspx" />   --%>      
        </div>
        <div class="col-md-2">
         <%--   <asp:Button ID="Button4" class="btn btn-primary btn-lg" runat="server" width ="95%" horizonalalign="Center" Text="Logout >>" PostBackUrl="~/Default.aspx"  />--%>
        </div>
    </div>
    </div>
        </div>
       <div class="row">
        <br />
    </div>


    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>


<asp:GridView ID="gvCustomres" runat="server" AutoGenerateColumns="False" 
        DataSourceID="dsComponentInventory2" GridLines="None"  
        AllowSorting="True"  width="95%"    horizonalalign="center"
        HeaderStyle-CssClass="headertxt" AlternatingRowStyle-CssClass="alt" CellPadding="4" ForeColor="#333333" Visible="False">  
<AlternatingRowStyle CssClass="alt" BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
     <Columns>
     <asp:CommandField ShowEditButton="True"></asp:CommandField>   
     <asp:BoundField DataField="fldCompID" SortExpression="fldCompID" ReadOnly="True" HeaderText="Component" /> 
     <asp:BoundField DataField="fldCompType" SortExpression="fldCompType" ReadOnly="True" HeaderText="Type" /> 
      <asp:BoundField DataField="fldCompUOM" SortExpression="fldCompUOM" ReadOnly="True" HeaderText="UOM" /> 
      <asp:BoundField DataField="fldAvgTiresUOM" SortExpression="fldAvgTiresUOM" ReadOnly="True" HeaderText="Avg Tires UOM" /> 
      <asp:BoundField DataField="fldAvgUsedTire" SortExpression="fldAvgUsedTire" ReadOnly="True" HeaderText="Avg Used Tire" /> 
      <asp:BoundField DataField="fldCompINV" SortExpression="fldCompINV" ReadOnly="True" HeaderText="Inventory" /> 
      <asp:BoundField DataField="fldInvTires" SortExpression="fldInvTires" ReadOnly="True" HeaderText="Tire Inventory" /> 
      <asp:BoundField DataField="fldInvRolls" SortExpression="fldInvRolls" ReadOnly="True" HeaderText="Roll Inventory" /> 
      <asp:BoundField DataField="fldInvYards" SortExpression="fldInvYards" ReadOnly="True" HeaderText="Yards Inventory" /> 
      <asp:BoundField DataField="fldSftCur" SortExpression="fldSftCur" ReadOnly="True" HeaderText="SftCur" />
      <asp:BoundField DataField="fldMIR" SortExpression="fldMIR" ReadOnly="True" HeaderText="Molds" />  
      <asp:BoundField DataField="fldM8HrReq" SortExpression="fldM8HrReq" ReadOnly="True" HeaderText="Molds 8 Hour Req" />  
      <asp:BoundField DataField="fldTotCycTime" SortExpression="fldTotCycTime" ReadOnly="True" HeaderText="Total Cycle Time" /> 
      <asp:BoundField DataField="min" HeaderText="Min Hrs" /> 
      <asp:BoundField DataField="max" HeaderText="Max Hrs" /> 
      <asp:BoundField DataField="demand" HeaderText="Demand" /> 
      <asp:BoundField DataField="componentMachine" HeaderText = "machine" />          
     </Columns>      
        <EditRowStyle BackColor="#999999" />
     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

<HeaderStyle CssClass="headertxt" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="Small"></HeaderStyle>

<PagerStyle CssClass="pgr" BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>

     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Size="X-Small" />
     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
     <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle  ForeColor="Red" BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle ForeColor="Red" BackColor="#6F8DAE" />
</asp:GridView>
<asp:GridView ID="gvBelts" runat="server" AutoGenerateColumns="False" 
        DataSourceID="dsBeltInventory" GridLines="None"  
        AllowSorting="True"  width="95%" horizonalAlign="center" 
        HeaderStyle-CssClass="headertxt" AlternatingRowStyle-CssClass="alt" CellPadding="4" ForeColor="#333333" Visible="False">  
<AlternatingRowStyle CssClass="alt" BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
     <Columns>
      <asp:CommandField ShowEditButton="True"></asp:CommandField>   
     <asp:BoundField DataField="ComponentId" SortExpression="ComponentId" HeaderText="GTC" ReadOnly="True"/> 
     <asp:BoundField DataField="ComponentType" SortExpression="ComponentType" HeaderText="ComponentType" ReadOnly="True" /> 
     <asp:BoundField DataField="BELT1" SortExpression="BELT1" HeaderText="BELT1" ReadOnly="True"/>      
     <asp:BoundField DataField="BELT2" SortExpression="BELT2" HeaderText="BELT2" ReadOnly="True"/>    
     
      <asp:BoundField DataField="ComponentDemand" SortExpression="ComponentDemand" 
             HeaderText="ComponentDemand" />
      <asp:BoundField DataField="ComponentMinInventory" 
             SortExpression="ComponentMinInventory" HeaderText="ComponentMinInventory" />  
      <asp:BoundField DataField="ComponentMaxInventory" 
             SortExpression="ComponentMaxInventory" HeaderText="ComponentMaxInventory" />        
     <asp:TemplateField HeaderText="Packaging" SortExpression="ComponentPackaging">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlComponentPackaging" runat="server" DataSourceID="dsComponentPackaging" DataTextField="PackageType" DataValueField="PackageType" SelectedValue='<%#Bind("ComponentPackaging") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <%# Eval("ComponentPackaging")%>
                </ItemTemplate>
      </asp:TemplateField>     
       <asp:BoundField DataField="ComponentMachine" SortExpression="ComponentMachine" HeaderText="Machine" ReadOnly="False"/>       
     </Columns>      
     

    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
     

<HeaderStyle CssClass="headertxt" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="Small"></HeaderStyle>

<PagerStyle CssClass="pgr" BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Size="X-Small" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />

        <SortedAscendingHeaderStyle  ForeColor="Red" BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle ForeColor="Red" BackColor="#6F8DAE" />
</asp:GridView>

 <asp:SqlDataSource ID="dsComponentPackaging" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>" 
         UpdateCommand = "select getdate()"
        SelectCommand="SELECT PackageType FROM [IQPackageTypes]">
   
    </asp:SqlDataSource>
 
 <asp:SqlDataSource ID="dsComponentInventory2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>" 
         UpdateCommand = "select getdate()"
        SelectCommand="SELECT * FROM [vInventoryMinMax] WHERE ([fldCompType] = @fldCompType) order by fldCompid">
       <SelectParameters>
           <asp:ControlParameter ControlID="DropDownList1" Name="fldCompType" 
               PropertyName="SelectedValue" Type="String" DefaultValue="Bead" />
       </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsBeltInventory" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>" 
         UpdateCommand = "select getdate()"
        SelectCommand="exec IQGetBeltInputData">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPackaging" runat="server" ConnectionString = "<%$ ConnectionStrings:MMRPDataDevConnectionString %>" SelectCommand="select * from IQPackageTypes" />

     <asp:SqlDataSource ID="dsComponentTypes" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>"        
        
        
        SelectCommand="select distinct(fldCompType) from [MMRP Data].dbo.tblinvextr
union
select ComponentType from PlanningIQ.dbo.IQComponentTypes where ComponentType='BELT'">
    </asp:SqlDataSource>
</asp:Content>
