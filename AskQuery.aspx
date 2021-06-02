<%@ Page Title="" Language="C#" MasterPageFile="~/HomeSite.master" AutoEventWireup="true" CodeFile="AskQuery.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
    <tr>
        <td colspan="3">
            ASK HERE YOUR QUERIES&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="#009900" 
                Text="Submitted Successfully" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="Red" 
                Text="Something Went Wrong" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            TOKEN NAME</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TokenName" DataValueField="TokenName" Width="399px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TokenName] FROM [Token]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Email ID</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="402px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Question</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="573px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

