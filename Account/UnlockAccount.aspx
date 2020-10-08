<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UnlockAccount.aspx.vb" Inherits="TusIQData.UnlockAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h2>
        Unlock
    </h2>
    <p >
        Please enter your username click the Submit ChorusID to se ir change your status.
    </p>
        <p>
            <asp:Label ID="Msg" runat="server" ForeColor="maroon" />
        </p>

        <p>
            <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Enter (Chorus ID)"></asp:Label>
           <asp:TextBox ID="TextBox1" runat="server"  AssociatedControlID="labChorus" CssClass="form-control"></asp:TextBox>
           <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-default" />    
        </p>
        <p>  
                        
            <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Selected User"></asp:Label>
            <asp:TextBox ID="txtComment" runat="server" Enabled="False" AssociatedControlID="Label3" CssClass="form-control"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Unlock"   CssClass="btn btn-default" />   
        </p> 

        <p>
            <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text=" "></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server" Enabled="False" Font-Names="Arial Black" Font-Size="Small" Text="UnLocked" />           
       </p> 
</asp:Content>

