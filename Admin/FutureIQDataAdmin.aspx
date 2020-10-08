<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FutureIQDataAdmin.aspx.vb" Inherits="TusIQData.FutureIQDataAdmin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <div class="jumbotron">
      <div class="row" >
     <div class="col-md-2"></div>
         <div class="col-md">
      <p class="lead" >Add Future Inputs Here..</p>
         </div>
   </div>
       
     <div class="row">
        <div class="col-md-4">
                <asp:Label ID="Label1" AssociatedControlID="txtNewEffectiveDate" CssClass="col-md-2 control-label" runat="server" Text="Eff Date" />
                <asp:TextBox runat="server" CssClass="form-control" ID="txtNewEffectiveDate" />
        </div>
        <div class="col-md-4">
                  <asp:Label ID="lblComponentId" runat="server" AssociatedControlID="txtNewComponentId" CssClass="col-md-2 control-label" Text="ID" />
                  <asp:TextBox runat="server" CssClass="form-control" ID="txtNewComponentId" />
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblComponentType" runat="server" Text="Type" AssociatedControlID="ddlNewComponentType" CssClass="col-md-2 control-label" />
                                <asp:DropDownList ID="ddlNewComponentType" runat="server" CssClass="form-control"
                        DataSourceID="dsComponentTypes" DataTextField="ComponentType" 
                        DataValueField="ComponentType" AutoPostBack="True"  /><br />
        </div>
    </div>
     
      <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblComponentDemand" AssociatedControlID="txtNewDemand" CssClass="col-md-2 control-label"  runat="server" Text="Demand" />
            <asp:TextBox runat="server" CssClass="form-control"  ID="txtNewDemand" />
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblMinInventory" runat="server" AssociatedControlID="txtNewMinInventory" CssClass="col-md-2 control-label" Text="Min" />
            <asp:TextBox runat="server" CssClass="form-control"  ID="txtNewMinInventory" />
        </div>
        <div class="col-md-4">
           <asp:Label ID="lblMaxInventory" runat="server" AssociatedControlID="txtNewMaxInventory" CssClass="col-md-2 control-label" Text="Max" />
            <asp:TextBox runat="server" CssClass="form-control"  ID="txtNewMaxInventory" />
        </div>
     </div>
     <div class="row">
         <br />
     </div>

      <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblMachine" runat="server" Text="Machine" AssociatedControlID="txtMachine" CssClass="col-md-2 control-label" Visible="true" />
            <asp:TextBox runat="server" ID="txtMachine" Visible="true" CssClass="form-control" ></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblPackaging" runat="server" AssociatedControlID="dsComponentPackaging" CssClass="col-md-2 control-label" Visible="true">Pack</asp:Label>
            <asp:DropDownList ID="ddlComponentPackaging" runat="server" 
                        DataSourceID="dsComponentPackaging" DataTextField="PackageType" 
                        DataValueField="PackageType" Visible="true" CssClass="form-control" AutoPostBack="True"  />
        </div>
        <div class="col-md-4">
                <asp:Button ID="btnAddNewRecord" runat="server" Text="Save" CssClass="btn btn-default" Font-Bold="True"  />
        </div>
     </div>

     <div class="row">
        <asp:Label ID="lblTest" runat="server"></asp:Label>
        <br />
        <br />
    </div>
     </div>
 <div class="row" >
     <div class="col-md-2"></div>
         <div class="col-md">
      <p class="lead" >Edit or delete existing inputs here.</p>
         </div>
   </div>
  <div class="row">
    
      <div class="col-md-4">
      <asp:Label ID="Label2" runat="server" Text="Type" AssociatedControlID="ddlComponentTypes" CssClass="col-md-2 control-label" Visible="true" />
</div>
      <div class="col-md-4">
               <asp:DropDownList ID="ddlComponentTypes" AssociatedControlID="Label2"  runat="server" AutoPostBack="True" 
        DataSourceID="dsComponentTypes" DataTextField="ComponentType" CssClass="form-control" 
        DataValueField="ComponentType">
    </asp:DropDownList>
          </div>
      <div class="col-md-4"> </div>
   
        </div>
     

       <div class="row">

        <br />
    </div>
  <div class="row">
    

          <asp:GridView ID="gvFutureIQInputs" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FutureInputId" DataSourceID="dsFutureInputs" 
              ForeColor="#333333" GridLines="None" width="95%"    horizonalalign="center" >
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:CommandField>
                  <asp:BoundField DataField="FutureInputId" HeaderText="FutureInputId" InsertVisible="False" ReadOnly="True" SortExpression="FutureInputId" />
                  <asp:BoundField DataField="EffectiveDate" DataFormatString="{0:d}" HeaderText="EffectiveDate" SortExpression="EffectiveDate" />
                  <asp:BoundField DataField="ComponentID" HeaderText="ComponentID" SortExpression="ComponentID" />
                  <asp:BoundField DataField="ComponentType" HeaderText="Type" SortExpression="ComponentType" />
                  <asp:BoundField DataField="ComponentDemand" HeaderText="Demand" SortExpression="ComponentDemand" />
                  <asp:BoundField DataField="ComponentMinInventory" HeaderText="Min" SortExpression="ComponentMinInventory" />
                  <asp:BoundField DataField="ComponentMaxInventory" HeaderText="Max" SortExpression="ComponentMaxInventory" />
                  <asp:BoundField DataField="ComponentPackaging" HeaderText="Packaging" SortExpression="ComponentPackaging" />
                  <asp:BoundField DataField="ComponentMachine" HeaderText="Machine" SortExpression="ComponentMachine" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>

          <asp:SqlDataSource ID="dsFutureInputs" runat="server" ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>" DeleteCommand="DELETE FROM [IQFutureInputs] WHERE [FutureInputId] = @FutureInputId" InsertCommand="INSERT INTO [IQFutureInputs] ([EffectiveDate], [ComponentID], [ComponentType], [ComponentDemand], [ComponentMinInventory], [ComponentMaxInventory], [ComponentPackaging], [ComponentMachine]) VALUES (@EffectiveDate, @ComponentID, @ComponentType, @ComponentDemand, @ComponentMinInventory, @ComponentMaxInventory, @ComponentPackaging, @ComponentMachine)" SelectCommand="SELECT [FutureInputId], [EffectiveDate], [ComponentID], [ComponentType], [ComponentDemand], [ComponentMinInventory], [ComponentMaxInventory], [ComponentPackaging], [ComponentMachine] FROM [IQFutureInputs] WHERE  ([ComponentType] = @ComponentType2)" UpdateCommand="UPDATE [IQFutureInputs] SET [EffectiveDate] = @EffectiveDate, [ComponentID] = @ComponentID, [ComponentType] = @ComponentType, [ComponentDemand] = @ComponentDemand, [ComponentMinInventory] = @ComponentMinInventory, [ComponentMaxInventory] = @ComponentMaxInventory, [ComponentPackaging] = @ComponentPackaging, [ComponentMachine] = @ComponentMachine WHERE [FutureInputId] = @FutureInputId">
              <DeleteParameters>
                  <asp:Parameter Name="FutureInputId" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="EffectiveDate" Type="DateTime" />
                  <asp:Parameter Name="ComponentID" Type="String" />
                  <asp:Parameter Name="ComponentType" Type="String" />
                  <asp:Parameter Name="ComponentDemand" Type="Double" />
                  <asp:Parameter Name="ComponentMinInventory" Type="Double" />
                  <asp:Parameter Name="ComponentMaxInventory" Type="Double" />
                  <asp:Parameter Name="ComponentPackaging" Type="String" />
                  <asp:Parameter Name="ComponentMachine" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="ddlComponentTypes" DefaultValue="Ply" Name="ComponentType2" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="EffectiveDate" Type="DateTime" />
                  <asp:Parameter Name="ComponentID" Type="String" />
                  <asp:Parameter Name="ComponentType" Type="String" />
                  <asp:Parameter Name="ComponentDemand" Type="Double" />
                  <asp:Parameter Name="ComponentMinInventory" Type="Double" />
                  <asp:Parameter Name="ComponentMaxInventory" Type="Double" />
                  <asp:Parameter Name="ComponentPackaging" Type="String" />
                  <asp:Parameter Name="ComponentMachine" Type="String" />
                  <asp:Parameter Name="FutureInputId" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
            
      
 </div>
<div class="row">
        <br />
        <br />
    </div>
  <div class="row"  >
      <div class="col-md">
  
    
    
  
    <br />
    
  
    <br />
    
    <br />
          </div>
   </div>
    <asp:Label ID="lblSql" runat="server"></asp:Label>
  <asp:SqlDataSource ID="dsComponentTypes" runat="server"  ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>" 
        SelectCommand="SELECT [ComponentType] from IQComponentTypes">   </asp:SqlDataSource>
<asp:SqlDataSource ID="dsPackaging" runat="server" ConnectionString = "<%$ ConnectionStrings:MMRPDataDevConnectionString %>" SelectCommand="select * from IQPackageTypes" />
 <asp:SqlDataSource ID="dsComponentPackaging" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MMRPDataDevConnectionString %>" 
         UpdateCommand = "select getdate()"
        SelectCommand="SELECT PackageType FROM [IQPackageTypes]">
   
    </asp:SqlDataSource>
</asp:Content>
