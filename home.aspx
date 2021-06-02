<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <h2>
        Welcome to Token Vault!
    </h2>
<p>
        <asp:Label ID="lblselectuser" runat="server" ForeColor="Blue" 
            Text="Select the type of user:"></asp:Label>
&nbsp;1.<asp:HyperLink ID="hlcandidate" runat="server" NavigateUrl="~/DeveloperLogin.aspx">Developer</asp:HyperLink>
&nbsp;2.<asp:HyperLink ID="hlvoter" runat="server" NavigateUrl="~/CustomerLogin.aspx">Customer</asp:HyperLink>
    </p>
<p>
        &nbsp;&nbsp;</p>
    </asp:Content>
