<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="ADashboard.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
    <br />
        Manage Customer [<asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/ManageCustomer.aspx">Click Here</asp:HyperLink>
&nbsp;]</p>
<p>
    &nbsp;</p>
<p>
    Manage Developer [
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ManageDeveloper.aspx">Click Here</asp:HyperLink>
    ]
</p>
<p>
    &nbsp;</p>

</asp:Content>

