<%@ Page Title="Register" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.vb" Inherits="TusIQData.Register" %>

<%@ Import Namespace="TusIQData" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <h2><%:Title %>.</h2>
   <asp:Label ID="Msg" runat="server" ForeColor="maroon" />

                    <p>
                        Use the form below to create a new account.
                    </p>
                    <p>
                        Name should by Lastname, Firstname
                    </p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length. At least 1 non-alphanumeric character required.
                    </p>
                    <p>
                        Email and Security question are used to recover password.
                        
                    </p>
                <p>
                    <asp:Label ID="UN" runat="server" CssClass="col-md-2 control-label" Text="Name" />
                    <span>
                    <asp:TextBox ID="NameText" runat="server" CssClass="form-control" TabIndex="1" ValidationGroup="UserGroup" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NameText" Display="Dynamic" ErrorMessage="Field is Required." style="margin: 0 auto 0 10px; color:Red" ValidationGroup="UserGroup" />
                    </span>
                </p>
                <p>
                    <asp:Label ID="CID" runat="server" CssClass="col-md-2 control-label" Text="Chorus" />
                    <span>
                    <asp:TextBox ID="UserNameText" runat="server" CssClass="form-control" TabIndex="2" ValidationGroup="UserGroup" />
                    <asp:RequiredFieldValidator ID="UserNameReq" runat="server" ControlToValidate="UserNameText" Display="Dynamic" ErrorMessage="Field is Required." style="margin: 0 auto 0 10px; color:Red" ValidationGroup="UserGroup" />
                    </span>
                </p>
                <p>
                    <asp:Label ID="pwd" runat="server" CssClass="col-md-2 control-label" Text="Password" />
                    <span>
                    <asp:TextBox ID="PassText" runat="server" CssClass="form-control" TabIndex="3" TextMode="Password" ValidationGroup="UserGroup" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PassText" Display="Dynamic" ErrorMessage="Field is Required." style="margin: 0 auto 0 10px; color:Red" ValidationGroup="UserGroup" />
                    <asp:CompareValidator ID="ComparePasswordsValidator" runat="server" ControlToCompare="PassConfirmText" ControlToValidate="PassText" Display="Dynamic" ErrorMessage="Passwords must match!" style="color:red;" ValidationGroup="UserGroup" />
                    </span>
                </p>
                <p>
                    <asp:Label ID="CPD" runat="server" CssClass="col-md-2 control-label" Text="Confirm" />
                    <span>
                    <asp:TextBox ID="PassConfirmText" runat="server" CssClass="form-control" TabIndex="4" TextMode="Password" ValidationGroup="UserGroup" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassConfirmText" Display="Dynamic" ErrorMessage="Field is Required." style="margin: 0 auto 0 10px; color:Red" ValidationGroup="UserGroup" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassText" ControlToValidate="PassConfirmText" Display="Dynamic" ErrorMessage="Passwords must match!" style="color:red;" ValidationGroup="UserGroup" />
                    </span>
                </p>
                <p>
                    <asp:Label ID="Email1" runat="server" CssClass="col-md-2 control-label" Text="Email" />
                    <span>
                    <asp:TextBox ID="EmailText" runat="server" CssClass="form-control" TabIndex="5" ValidationGroup="UserGroup" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailText" Display="Dynamic" ErrorMessage="Field is Required." style="margin: 0 auto 0 10px; color:Red" ValidationGroup="UserGroup" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailText" Display="Dynamic" ErrorMessage="Email Not Valid" style="color:red;margin: 0 auto 0 10px;" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="UserGroup" />
                    </span>
                </p>
                <p>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" style="float:left" Text="Create" />
                    <asp:CheckBox ID="ActiveUser" runat="server" Checked="true" style="margin:0 auto 0 145px" TabIndex="6" Text="Active" />
                </p>
</asp:Content>