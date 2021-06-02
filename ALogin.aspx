<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ALogin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 134px;
        }
        .style3
        {
            width: 119px;
        }
        .style4
        {
            width: 134px;
            height: 21px;
        }
        .style5
        {
            width: 119px;
            height: 21px;
        }
        .style6
        {
            height: 21px;
        }
        .style7
        {
            height: 21px;
            width: 145px;
        }
        .style8
        {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td colspan="4">
                &nbsp;&nbsp; Admin Login here....&nbsp;
                <asp:Label ID="lblvalidation" runat="server" ForeColor="Red" 
                    Text="Invalid Username or Password!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5">
                <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="blpassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                    Text="Login" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

