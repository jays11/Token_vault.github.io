<%@ Page Title="" Language="C#" MasterPageFile="~/HomeSite.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Default6" %>

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
                GIVE US YOUR VALUABLE FEEDBACK&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#009900" 
                    Text="Submitted Successfully" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" 
                    Text="Something Went Wrong" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="320px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="320px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Suggestion</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="478px" Height="84px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Rate Us</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Need Improvement</asp:ListItem>
                    <asp:ListItem>Not Satisfied</asp:ListItem>
                </asp:RadioButtonList>
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
    </table>
</asp:Content>

