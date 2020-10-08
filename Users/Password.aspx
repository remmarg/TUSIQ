<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Password.aspx.vb" Inherits="TusIQData.Password" %>
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
 <h2>Change Password
    </h2>
                <p>
        New passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                </p>
                <asp:ChangePassword ID="ChangeUserPassword" runat="server"  CancelDestinationPageUrl="~/" EnableViewState="false" RenderOuterTable="false" 
         SuccessPageUrl="ChangePasswordSuccess.aspx">
                    <ChangePasswordTemplate>
                        <span class="failureNotification">
                        <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                        </span>
                        <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="ChangeUserPasswordValidationGroup"/>
                        <div class="accountInfo">
                            <fieldset class="changePassword" style ="width:  100%">
                                <p>
                                    <asp:Label ID="CurrentPasswordLabel0" width="200px" runat="server" AssociatedControlID="CurrentPassword" CssClass="col-md-2 control-label">Old Password:</asp:Label>
                                    <asp:TextBox ID="CurrentPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Old Password is required." 
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:Label ID="NewPasswordLabel" width="200px" runat="server" AssociatedControlID="NewPassword" CssClass="col-md-2 control-label">New Password:</asp:Label>
                                    <asp:TextBox ID="NewPassword" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" 
                             CssClass="failureNotification" ErrorMessage="New Password is required." ToolTip="New Password is required." 
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:Label ID="ConfirmNewPasswordLabel" width="200px" runat="server" AssociatedControlID="ConfirmNewPassword" CssClass="col-md-2 control-label">Confirm New Password:</asp:Label>
                                    <asp:TextBox ID="ConfirmNewPassword" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" 
                             CssClass="failureNotification" Display="Dynamic" ErrorMessage="Confirm New Password is required."
                             ToolTip="Confirm New Password is required." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                             CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                                </p>
                            </fieldset>
                            <p >
                                <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" OnClick="CancelPushButton_Click" />
                                <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Change Password" 
                         ValidationGroup="ChangeUserPasswordValidationGroup" CssClass="btn btn-default" />
                            </p>
                        </div>
                    </ChangePasswordTemplate>
                </asp:ChangePassword>
        </div>
        <div class="col-md-4">
                          
        </div>
        <div class="col-md-4">
        </div>
    </div>
         <div class="row">
        <div class="col-md-4">

                
        </div>
        <div class="col-md-4">

        </div>
        <div class="col-md-4">

        </div>
    </div>
         </div>
</asp:Content>
