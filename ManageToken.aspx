<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="ManageToken.aspx.cs" Inherits="Default3" %>

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
        MANAGE TOKEN HERE.....</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TokenId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TokenId" HeaderText="TokenId" InsertVisible="False" ReadOnly="True" SortExpression="TokenId" />
                <asp:BoundField DataField="TokenName" HeaderText="TokenName" SortExpression="TokenName" />
                <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                <asp:BoundField DataField="Abstract" HeaderText="Abstract" SortExpression="Abstract" />
                <asp:BoundField DataField="Technology" HeaderText="Technology" SortExpression="Technology" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EstimatedEndDate" HeaderText="EstimatedEndDate" SortExpression="EstimatedEndDate" />
                <asp:BoundField DataField="Requirement" HeaderText="Requirement" SortExpression="Requirement" />
                <asp:BoundField DataField="Modules" HeaderText="Modules" SortExpression="Modules" />
                <asp:BoundField DataField="ExistingSystem" HeaderText="ExistingSystem" SortExpression="ExistingSystem" />
                <asp:BoundField DataField="ProposedSystem" HeaderText="ProposedSystem" SortExpression="ProposedSystem" />
                <asp:BoundField DataField="DeveloperAssigned" HeaderText="DeveloperAssigned" SortExpression="DeveloperAssigned" />
                <asp:BoundField DataField="Platform" HeaderText="Platform" SortExpression="Platform" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Token] WHERE [TokenId] = @original_TokenId AND (([TokenName] = @original_TokenName) OR ([TokenName] IS NULL AND @original_TokenName IS NULL)) AND (([CustomerEmail] = @original_CustomerEmail) OR ([CustomerEmail] IS NULL AND @original_CustomerEmail IS NULL)) AND (([Abstract] = @original_Abstract) OR ([Abstract] IS NULL AND @original_Abstract IS NULL)) AND (([Technology] = @original_Technology) OR ([Technology] IS NULL AND @original_Technology IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EstimatedEndDate] = @original_EstimatedEndDate) OR ([EstimatedEndDate] IS NULL AND @original_EstimatedEndDate IS NULL)) AND (([Requirement] = @original_Requirement) OR ([Requirement] IS NULL AND @original_Requirement IS NULL)) AND (([Modules] = @original_Modules) OR ([Modules] IS NULL AND @original_Modules IS NULL)) AND (([ExistingSystem] = @original_ExistingSystem) OR ([ExistingSystem] IS NULL AND @original_ExistingSystem IS NULL)) AND (([ProposedSystem] = @original_ProposedSystem) OR ([ProposedSystem] IS NULL AND @original_ProposedSystem IS NULL)) AND (([DeveloperAssigned] = @original_DeveloperAssigned) OR ([DeveloperAssigned] IS NULL AND @original_DeveloperAssigned IS NULL)) AND (([Platform] = @original_Platform) OR ([Platform] IS NULL AND @original_Platform IS NULL)) AND (([Cost] = @original_Cost) OR ([Cost] IS NULL AND @original_Cost IS NULL))" InsertCommand="INSERT INTO [Token] ([TokenName], [CustomerEmail], [Abstract], [Technology], [StartDate], [EstimatedEndDate], [Requirement], [Modules], [ExistingSystem], [ProposedSystem], [DeveloperAssigned], [Platform], [Cost]) VALUES (@TokenName, @CustomerEmail, @Abstract, @Technology, @StartDate, @EstimatedEndDate, @Requirement, @Modules, @ExistingSystem, @ProposedSystem, @DeveloperAssigned, @Platform, @Cost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Token]" UpdateCommand="UPDATE [Token] SET [TokenName] = @TokenName, [CustomerEmail] = @CustomerEmail, [Abstract] = @Abstract, [Technology] = @Technology, [StartDate] = @StartDate, [EstimatedEndDate] = @EstimatedEndDate, [Requirement] = @Requirement, [Modules] = @Modules, [ExistingSystem] = @ExistingSystem, [ProposedSystem] = @ProposedSystem, [DeveloperAssigned] = @DeveloperAssigned, [Platform] = @Platform, [Cost] = @Cost WHERE [TokenId] = @original_TokenId AND (([TokenName] = @original_TokenName) OR ([TokenName] IS NULL AND @original_TokenName IS NULL)) AND (([CustomerEmail] = @original_CustomerEmail) OR ([CustomerEmail] IS NULL AND @original_CustomerEmail IS NULL)) AND (([Abstract] = @original_Abstract) OR ([Abstract] IS NULL AND @original_Abstract IS NULL)) AND (([Technology] = @original_Technology) OR ([Technology] IS NULL AND @original_Technology IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EstimatedEndDate] = @original_EstimatedEndDate) OR ([EstimatedEndDate] IS NULL AND @original_EstimatedEndDate IS NULL)) AND (([Requirement] = @original_Requirement) OR ([Requirement] IS NULL AND @original_Requirement IS NULL)) AND (([Modules] = @original_Modules) OR ([Modules] IS NULL AND @original_Modules IS NULL)) AND (([ExistingSystem] = @original_ExistingSystem) OR ([ExistingSystem] IS NULL AND @original_ExistingSystem IS NULL)) AND (([ProposedSystem] = @original_ProposedSystem) OR ([ProposedSystem] IS NULL AND @original_ProposedSystem IS NULL)) AND (([DeveloperAssigned] = @original_DeveloperAssigned) OR ([DeveloperAssigned] IS NULL AND @original_DeveloperAssigned IS NULL)) AND (([Platform] = @original_Platform) OR ([Platform] IS NULL AND @original_Platform IS NULL)) AND (([Cost] = @original_Cost) OR ([Cost] IS NULL AND @original_Cost IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TokenId" Type="Int32" />
                <asp:Parameter Name="original_TokenName" Type="String" />
                <asp:Parameter Name="original_CustomerEmail" Type="String" />
                <asp:Parameter Name="original_Abstract" Type="String" />
                <asp:Parameter Name="original_Technology" Type="String" />
                <asp:Parameter Name="original_StartDate" Type="String" />
                <asp:Parameter Name="original_EstimatedEndDate" Type="String" />
                <asp:Parameter Name="original_Requirement" Type="String" />
                <asp:Parameter Name="original_Modules" Type="String" />
                <asp:Parameter Name="original_ExistingSystem" Type="String" />
                <asp:Parameter Name="original_ProposedSystem" Type="String" />
                <asp:Parameter Name="original_DeveloperAssigned" Type="String" />
                <asp:Parameter Name="original_Platform" Type="String" />
                <asp:Parameter Name="original_Cost" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TokenName" Type="String" />
                <asp:Parameter Name="CustomerEmail" Type="String" />
                <asp:Parameter Name="Abstract" Type="String" />
                <asp:Parameter Name="Technology" Type="String" />
                <asp:Parameter Name="StartDate" Type="String" />
                <asp:Parameter Name="EstimatedEndDate" Type="String" />
                <asp:Parameter Name="Requirement" Type="String" />
                <asp:Parameter Name="Modules" Type="String" />
                <asp:Parameter Name="ExistingSystem" Type="String" />
                <asp:Parameter Name="ProposedSystem" Type="String" />
                <asp:Parameter Name="DeveloperAssigned" Type="String" />
                <asp:Parameter Name="Platform" Type="String" />
                <asp:Parameter Name="Cost" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TokenName" Type="String" />
                <asp:Parameter Name="CustomerEmail" Type="String" />
                <asp:Parameter Name="Abstract" Type="String" />
                <asp:Parameter Name="Technology" Type="String" />
                <asp:Parameter Name="StartDate" Type="String" />
                <asp:Parameter Name="EstimatedEndDate" Type="String" />
                <asp:Parameter Name="Requirement" Type="String" />
                <asp:Parameter Name="Modules" Type="String" />
                <asp:Parameter Name="ExistingSystem" Type="String" />
                <asp:Parameter Name="ProposedSystem" Type="String" />
                <asp:Parameter Name="DeveloperAssigned" Type="String" />
                <asp:Parameter Name="Platform" Type="String" />
                <asp:Parameter Name="Cost" Type="String" />
                <asp:Parameter Name="original_TokenId" Type="Int32" />
                <asp:Parameter Name="original_TokenName" Type="String" />
                <asp:Parameter Name="original_CustomerEmail" Type="String" />
                <asp:Parameter Name="original_Abstract" Type="String" />
                <asp:Parameter Name="original_Technology" Type="String" />
                <asp:Parameter Name="original_StartDate" Type="String" />
                <asp:Parameter Name="original_EstimatedEndDate" Type="String" />
                <asp:Parameter Name="original_Requirement" Type="String" />
                <asp:Parameter Name="original_Modules" Type="String" />
                <asp:Parameter Name="original_ExistingSystem" Type="String" />
                <asp:Parameter Name="original_ProposedSystem" Type="String" />
                <asp:Parameter Name="original_DeveloperAssigned" Type="String" />
                <asp:Parameter Name="original_Platform" Type="String" />
                <asp:Parameter Name="original_Cost" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

