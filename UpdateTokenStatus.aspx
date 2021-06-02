<%@ Page Title="" Language="C#" MasterPageFile="~/DeveloperHomeSite.master" AutoEventWireup="true" CodeFile="UpdateTokenStatus.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">UPDATE TOKEN STATUS HERE........ 
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    Text="Something Went Wrong " Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" ForeColor="#00CC00" 
                    Text="Status Updated" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>TOKEN NAME </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TokenName" DataValueField="TokenName" Height="32px" Width="308px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TokenName] FROM [Token]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>STATUS</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="31px" Width="405px">
                    <asp:ListItem>Not Yet Started</asp:ListItem>
                    <asp:ListItem>Under Analysis</asp:ListItem>
                    <asp:ListItem>Need Imformation</asp:ListItem>
                    <asp:ListItem>Under Process</asp:ListItem>
                    <asp:ListItem>Testing</asp:ListItem>
                    <asp:ListItem>Maintenance</asp:ListItem>
                    <asp:ListItem>Ready to Deploy</asp:ListItem>
                    <asp:ListItem>Completed</asp:ListItem>
                </asp:DropDownList>
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
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

