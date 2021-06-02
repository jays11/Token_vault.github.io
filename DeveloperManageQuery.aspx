<%@ Page Title="" Language="C#" MasterPageFile="~/DeveloperHomeSite.master" AutoEventWireup="true" CodeFile="DeveloperManageQuery.aspx.cs" Inherits="Default3" %>

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
        MANAGE QUERIES HERE......</p>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QueryId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="QueryId" HeaderText="QueryId" InsertVisible="False" ReadOnly="True" SortExpression="QueryId" />
                <asp:BoundField DataField="TokenName" HeaderText="TokenName" SortExpression="TokenName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Query] WHERE [QueryId] = @original_QueryId AND (([TokenName] = @original_TokenName) OR ([TokenName] IS NULL AND @original_TokenName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Question] = @original_Question) OR ([Question] IS NULL AND @original_Question IS NULL)) AND (([Answer] = @original_Answer) OR ([Answer] IS NULL AND @original_Answer IS NULL))" InsertCommand="INSERT INTO [Query] ([TokenName], [Email], [Question], [Answer]) VALUES (@TokenName, @Email, @Question, @Answer)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Query]" UpdateCommand="UPDATE [Query] SET [TokenName] = @TokenName, [Email] = @Email, [Question] = @Question, [Answer] = @Answer WHERE [QueryId] = @original_QueryId AND (([TokenName] = @original_TokenName) OR ([TokenName] IS NULL AND @original_TokenName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Question] = @original_Question) OR ([Question] IS NULL AND @original_Question IS NULL)) AND (([Answer] = @original_Answer) OR ([Answer] IS NULL AND @original_Answer IS NULL))" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="original_QueryId" Type="Int32" />
                <asp:Parameter Name="original_TokenName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Question" Type="String" />
                <asp:Parameter Name="original_Answer" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TokenName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="Answer" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TokenName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="Answer" Type="String" />
                <asp:Parameter Name="original_QueryId" Type="Int32" />
                <asp:Parameter Name="original_TokenName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Question" Type="String" />
                <asp:Parameter Name="original_Answer" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

