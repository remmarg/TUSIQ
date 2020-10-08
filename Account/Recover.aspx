<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Recover.aspx.vb" Inherits="TusIQData.Recover" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="jumbotron text-center">
      <h1><asp:Label ID="UserNameLabel"  runat="server" > Forgot Password!</asp:Label></h1>
     <p><asp:Label class="lead" id="Label5" runat="server" /></p>
     <asp:Label class="lead" id="Msg" runat="server" ForeColor="maroon" /><br />
    
          <div class="row">
              <div class="col-md-2"></div>
        <div class="col-md-2">

        </div>
        <div class="col-md-2">
            
        </div>
        <div class="col-md-2">
        
        </div>

         </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h2><asp:Label id="Label1" CssClass="col-md-2 control-label " AssociatedControlID="UsernameTextBox" text="&#39;ChorusID&#39;" runat="server" /></h2>
            
             <asp:Textbox id="UsernameTextBox" CssClass="form-control" width="100%" runat="server" placeholder="10089999" AutoPostBack="true" Font-Size="Large" />
             <asp:RequiredFieldValidator id="UsernameRequiredValidator" runat="server"
                                        ControlToValidate="UsernameTextBox"  ForeColor="red"
                                        Display="Static" ErrorMessage="Required" />
           
        </div>


        <div class="col-md-2">
            <h2><asp:Label id="Label2" CssClass="col-md-2 control-label " AssociatedControlID="UsernameTextBox" text="&#39;Question&#39;" runat="server" /></h2>

              <asp:Label id="QuestionLabel" CssClass="col-md-2 control-label" width="100%" runat="server" Font-Size="X-Large" />
         
        </div>

        <div class="col-md-4">
            <h2><asp:Label id="Label3" CssClass="col-md-2 control-label " AssociatedControlID="UsernameTextBox" text="&#39;Answer&#39;" runat="server" /></h2>

      
            <asp:TextBox id="AnswerTextBox" CssClass="form-control"  runat="server"  width="100%" Enabled="false" />
          <asp:RequiredFieldValidator id="AnswerRequiredValidator" runat="server"
                                      ControlToValidate="AnswerTextBox" ForeColor="red"
                                      Display="Static" ErrorMessage="Required" Enabled="false" />
         
        </div>

    </div>
        <div class="row">
        
        <div class="col-md-2">
            <asp:Button ID="Button1" runat="server" class="btn btn-primary"  Text="Send Email" Visible="False" />
        </div>
        <div class="col-md-2">
              <asp:Button id="ResetPasswordButton" Text="Reset Password" class="btn btn-primary"
              OnClick="ResetPassword_OnClick" runat="server" Enabled="false" />
        </div>
     </div>
</div>
    <asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
</asp:Content>


