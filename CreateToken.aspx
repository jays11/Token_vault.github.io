<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="CreateToken.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: x-large;
    }
    .auto-style3 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="2"><strong class="auto-style2">CREATE NEW TOKEN HERE........</strong><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Lime" Text="TOKEN CREATED" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text="Something Went Wrong" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>TOKEN NAME</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="383px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>CUSTOMER EMAIL ID</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="email" Width="314px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [email] FROM [register]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>ABSTRACT</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="110px" TextMode="MultiLine" Width="489px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>TECHNOLOGY</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="499px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>START DATE</td>
        <td>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="100px" Width="120px">
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>ESTIMATED END DATE</td>
        <td>
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="100px" Width="120px">
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>REQUIREMENT</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="80px" TextMode="MultiLine" Width="401px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>MODULES</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="397px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>EXISTING SYSTEM</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Height="102px" TextMode="MultiLine" Width="403px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>PROPOSED SYSTEM</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" Height="92px" TextMode="MultiLine" Width="409px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>ASSIGNED TO (DEVELOPER) :</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Email" DataValueField="Email" Width="300px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email] FROM [Developer]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>PLATFORM</td>
        <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="133px">
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>COST</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Width="175px"></asp:TextBox>
        &nbsp; in INR</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="CREATE TOKEN" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

