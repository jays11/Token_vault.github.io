<%@ Page Title="" Language="C#" MasterPageFile="~/HomeSite.master" AutoEventWireup="true" CodeFile="RequestReassign.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        REQUEST FOR RE-ASSIGNING TOKEN TO OTHER DEVELOPER</p>
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>
            <asp:Label ID="Label1" runat="server" ForeColor="#009900" 
                Text="Submitted Successfully" Visible="False"></asp:Label>
            </td>
            <td>
            <asp:Label ID="Label2" runat="server" ForeColor="Red" 
                Text="Something Went Wrong" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Customer Email ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="290px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Token Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TokenName" DataValueField="TokenName" Width="307px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TokenName] FROM [Token]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Reason for Re-Assignment </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="109px" TextMode="MultiLine" Width="441px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>

