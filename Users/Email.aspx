<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Email.aspx.vb" Inherits="TusIQData.Email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
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
        <div class="col-md-4"><h2>Update E-Mail Address:
                    </h2>
                <p>
                    <asp:Button ID="butUpdateEmail" runat="server" style="float:left" Text="Update" CssClass="btn btn-default"/>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control"  />
                    <asp:RequiredFieldValidator ID="EmailRequiredValidator" runat="server" 
                        ControlToValidate="EmailTextBox" Display="Static" ErrorMessage="Required" 
                        ForeColor="red" />
                </p>
            </div>
         </div>
</div>
</asp:Content>