<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        text-align: center;
    }
    .style2
    {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style1">
    <br />
    <strong class="style2">SOMETHING WENT WRONG </strong>
</p>
<p class="style1">
    <strong class="style2">PLEASE RE-LOGIN and TRY AGAIN</strong></p>
</asp:Content>

