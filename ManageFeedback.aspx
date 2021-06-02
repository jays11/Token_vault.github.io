<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="ManageFeedback.aspx.cs" Inherits="Default3" %>

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
        MANAGE FEEDBACK</p>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Suggestion" HeaderText="Suggestion" SortExpression="Suggestion" />
                <asp:BoundField DataField="RateUs" HeaderText="RateUs" SortExpression="RateUs" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Suggestion] = @original_Suggestion) OR ([Suggestion] IS NULL AND @original_Suggestion IS NULL)) AND (([RateUs] = @original_RateUs) OR ([RateUs] IS NULL AND @original_RateUs IS NULL))" InsertCommand="INSERT INTO [Feedback] ([Name], [Email], [Suggestion], [RateUs]) VALUES (@Name, @Email, @Suggestion, @RateUs)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [Name] = @Name, [Email] = @Email, [Suggestion] = @Suggestion, [RateUs] = @RateUs WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Suggestion] = @original_Suggestion) OR ([Suggestion] IS NULL AND @original_Suggestion IS NULL)) AND (([RateUs] = @original_RateUs) OR ([RateUs] IS NULL AND @original_RateUs IS NULL))" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Suggestion" Type="String" />
                <asp:Parameter Name="original_RateUs" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Suggestion" Type="String" />
                <asp:Parameter Name="RateUs" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Suggestion" Type="String" />
                <asp:Parameter Name="RateUs" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Suggestion" Type="String" />
                <asp:Parameter Name="original_RateUs" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

