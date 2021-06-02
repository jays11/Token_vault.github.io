<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="Developer_signup.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 154px;
        }
        .style3
        {
            width: 94px;
        }
        .style4
        {
            width: 170px;
        }
        .auto-style1 {
            width: 203px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td colspan="4" class="auto-style3">
                &nbsp;<span class="auto-style2"><strong class="auto-style4"> New Developer signup here...&nbsp;</strong></span>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    Text="Something Went Wrong" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" ForeColor="Lime" 
                    Text="Registered Successfully" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" rowspan="15">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Height="73px" Width="356px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblmobile" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtmobile" runat="server" MaxLength="10"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblemail" runat="server" Text="E-mail"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtemail" runat="server" Width="259px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*Wrong Email Format" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="ABC"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Confirm
                <asp:Label ID="lblpwd0" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpwd" ControlToValidate="txtcpwd" 
                    ErrorMessage="Password Doesnot Match" ForeColor="Red" ValidationGroup="ABC"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Department</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>ASP.NET</asp:ListItem>
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>Asterisk</asp:ListItem>
                    <asp:ListItem>Python</asp:ListItem>
                    <asp:ListItem>Jhoomla</asp:ListItem>
                    <asp:ListItem>Drupal</asp:ListItem>
                    <asp:ListItem>Magento</asp:ListItem>
                    <asp:ListItem>Wordpress</asp:ListItem>
                    <asp:ListItem>Android</asp:ListItem>
                    <asp:ListItem>iOS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Join Date</td>
            <td class="auto-style1">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Designation</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Trainee</asp:ListItem>
                    <asp:ListItem>Developer</asp:ListItem>
                    <asp:ListItem>Sr. Developer</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Salary</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;in INR</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

