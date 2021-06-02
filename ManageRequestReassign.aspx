<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="ManageRequestReassign.aspx.cs" Inherits="Default3" %>

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
        MANAGE THE REQUEST FOR REASSIGNING TOKEN</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                <asp:BoundField DataField="TokenName" HeaderText="TokenName" SortExpression="TokenName" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [RequestReassign] WHERE [Id] = @original_Id AND (([CustomerEmail] = @original_CustomerEmail) OR ([CustomerEmail] IS NULL AND @original_CustomerEmail IS NULL)) AND (([TokenName] = @original_TokenName) OR ([TokenName] IS NULL AND @original_TokenName IS NULL)) AND (([Reason] = @original_Reason) OR ([Reason] IS NULL AND @original_Reason IS NULL))" InsertCommand="INSERT INTO [RequestReassign] ([CustomerEmail], [TokenName], [Reason]) VALUES (@CustomerEmail, @TokenName, @Reason)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [RequestReassign]" UpdateCommand="UPDATE [RequestReassign] SET [CustomerEmail] = @CustomerEmail, [TokenName] = @TokenName, [Reason] = @Reason WHERE [Id] = @original_Id AND (([CustomerEmail] = @original_CustomerEmail) OR ([CustomerEmail] IS NULL AND @original_CustomerEmail IS NULL)) AND (([TokenName] = @original_TokenName) OR ([TokenName] IS NULL AND @original_TokenName IS NULL)) AND (([Reason] = @original_Reason) OR ([Reason] IS NULL AND @original_Reason IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_CustomerEmail" Type="String" />
                <asp:Parameter Name="original_TokenName" Type="String" />
                <asp:Parameter Name="original_Reason" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerEmail" Type="String" />
                <asp:Parameter Name="TokenName" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerEmail" Type="String" />
                <asp:Parameter Name="TokenName" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_CustomerEmail" Type="String" />
                <asp:Parameter Name="original_TokenName" Type="String" />
                <asp:Parameter Name="original_Reason" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

