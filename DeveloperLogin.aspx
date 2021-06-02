<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeveloperLogin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 150px;
        }
        .style3
        {
        }
        .style4
        {
            width: 137px;
        }
        .style5
        {
            width: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="style1">
        <tr>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp; Developer Login Here.... &nbsp;
                <asp:Label ID="lblvalidation" runat="server" ForeColor="Red" 
                    Text="Invalid Username or Password!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" rowspan="6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="*Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="*Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                    Text="Login" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>

