<%@ Page Title="" Language="C#" MasterPageFile="~/HomeSite.master" AutoEventWireup="true" CodeFile="ViewQueryAnswer.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        FIND THE ANSWER TO YOUR QUERIES BEEN ASKED...............</p>
    <p>
        ENTER THE EMAIL ID.
        <asp:TextBox ID="TextBox1" runat="server" Width="294px"></asp:TextBox>
    </p>
    <p>
        SELECT THE TOKEN NAME&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TokenName" DataValueField="TokenName" Width="259px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TokenName] FROM [Token]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Check" />
&nbsp;&nbsp;
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
</asp:Content>

