<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Phone.aspx.vb" Inherits="TusIQData.Phone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
    <h3><b>Current User Name:<%=User.Identity.Name%>  
        <asp:Label ID="Label5" runat="server" Text="Not Logged In"></asp:Label>
         Existing users: 
        <asp:Label ID="Label4" runat="server"  Text="Not Logged In"></asp:Label>
        &nbsp;</b></h3>
    <h3>
        <asp:Label ID="Msg" runat="server" ForeColor="Maroon" >...</asp:Label>
    </h3>

     <div class="row">
        <div class="col-md-4">
    <h2>Update Your Phone Numbers
                    </h2>
                <span >
                <asp:Literal ID="ErrorMessage"  runat="server"></asp:Literal>
                </span>
                <div class="accountInfo">
                    <asp:Label ID="UserNameLabel" runat="server" width="200px" CssClass="col-md-2 control-label" AssociatedControlID="UserName">User Name:</asp:Label>
                    <asp:TextBox ID="UserName" runat="server" CssClass="form-control" Enabled ="false"></asp:TextBox>
                    <br />
                    <asp:Label ID="PrimaryPhoneLabel" runat="server" width="200px" CssClass="col-md-2 control-label" AssociatedControlID="PrimaryPhoneText">1st Phone Number:</asp:Label>
                    <asp:TextBox ID="PrimaryPhoneText" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                    <asp:Label ID="SecondaryPhoneLabel" runat="server" width="200px" CssClass="col-md-2 control-label" AssociatedControlID="SecondaryPhoneText">2nd Phone Number:</asp:Label>
                    <asp:TextBox ID="SecondaryPhoneText" runat="server" CssClass="form-control"></asp:TextBox>
                    <br/>
                    <asp:Button ID="UpdatePhoneNumbers" runat="server" CommandName="MoveNext" Text="Apply" 
                                 ValidationGroup="RegisterUserValidationGroup" CssClass="btn btn-default"/>
                </div>
            </div>
         </div>
         </div>
</asp:Content>
