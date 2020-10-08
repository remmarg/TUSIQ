<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Question.aspx.vb" Inherits="TusIQData.Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
         <h2>Change Password Question and Answer:
                </h2>
        <h3>
        <asp:Label ID="Msg" runat="server" ForeColor="Maroon" >...</asp:Label>
    </h3>
                <div>
                    <p>
                        <asp:Label ID="CurrentPasswordLabel" runat="server"  width="200px" AssociatedControlID="PasswordTextbox" CssClass="col-md-2 control-label">Current Password:</asp:Label>
                        <asp:TextBox ID="PasswordTextbox" TextMode="Password" runat="server"  CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="OldPasswordRequiredValidator" runat="server" 
                    ControlToValidate="PasswordTextbox" Display="Static" ErrorMessage="Required" 
                    ForeColor="red" />
                    </p>
                    <p>
                        <asp:Label ID="Label2" runat="server" width="200px" AssociatedControlID="QuestionTextbox" CssClass="col-md-2 control-label">New Question:</asp:Label>
                        <asp:TextBox ID="QuestionTextbox" runat="server" MaxLength="128"  CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="QuestionRequiredValidator" runat="server" 
                    ControlToValidate="QuestionTextbox" Display="Static" ErrorMessage="Required" 
                    ForeColor="red" />
                    </p>
                    <p>
                        <asp:Label ID="Label3" runat="server" width="200px" AssociatedControlID="AnswerTextbox"  CssClass="col-md-2 control-label">New Answer:</asp:Label>
                        <asp:TextBox ID="AnswerTextbox" runat="server" MaxLength="128" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="AnswerRequiredValidator" runat="server" 
                    ControlToValidate="AnswerTextbox" Display="Static" ErrorMessage="Required" 
                    ForeColor="red" />
                    </p>
                </div>
                <div>
                    <p>
                        <asp:Button ID="ChangePasswordQuestionButton" Text="Change Password Question and Answer"
            OnClick="ChangePasswordQuestion_OnClick" runat="server" CssClass="btn btn-default"/>
                    </p>
                </div>
         </div>
</asp:Content>
