<%@ Page Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="CRegister.aspx.cs" Inherits="regst" Title="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style4"><span class="auto-style3"><strong class="auto-style5">Registration Form</strong></span>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Visible="False">Something Went Wrong</asp:Label>
        &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Lime" Visible="False">SUCCESSFULLY REGISTERED</asp:Label>
            </div>
<table style="width: 51%; height: 289px;">
        <tr>
            <td class="auto-style1">
                FIRST NAME:             </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                LAST NAME:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
        <td>
        
                Date of Birth:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                GENDER:             </td>
            <td style="width: 242px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                E_MAIL ID:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                PASSWORD:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                CONFIRM PASSWORD</td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox11" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Mobile No:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            <td>
                
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                ADRESS:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="174px"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                CITY:             </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                STATE:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                PIN_CODE:
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
        <td>
            &nbsp;</td>
            <td style="width: 242px">
                <asp:Button ID="Button1" runat="server" Text="REGISTER" onclick="Button1_Click" />
            </td>
              <td>
                  <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                      onclick="Button2_Click" Text="Cancel" />
            </td>
            <td>
                &nbsp;</td>
            </tr>
        </table>


</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 69px;
        }
        .auto-style2 {
            width: 242px;
            height: 69px;
        }
    .auto-style3 {
        font-size: x-large;
    }
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        font-size: large;
    }
    </style>
</asp:Content>


