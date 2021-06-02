<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="ManageDeveloper.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
    <strong>Manage Developer</strong></p>
<p class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DId" HeaderText="DId" InsertVisible="False" ReadOnly="True" SortExpression="DId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="CPassword" HeaderText="CPassword" SortExpression="CPassword" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="JoinDate" HeaderText="JoinDate" SortExpression="JoinDate" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Developer] WHERE [DId] = @original_DId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([CPassword] = @original_CPassword) OR ([CPassword] IS NULL AND @original_CPassword IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([JoinDate] = @original_JoinDate) OR ([JoinDate] IS NULL AND @original_JoinDate IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL))" InsertCommand="INSERT INTO [Developer] ([Name], [Username], [Address], [Mobile], [Email], [State], [City], [Password], [CPassword], [Department], [JoinDate], [Designation], [Salary]) VALUES (@Name, @Username, @Address, @Mobile, @Email, @State, @City, @Password, @CPassword, @Department, @JoinDate, @Designation, @Salary)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Developer]" UpdateCommand="UPDATE [Developer] SET [Name] = @Name, [Username] = @Username, [Address] = @Address, [Mobile] = @Mobile, [Email] = @Email, [State] = @State, [City] = @City, [Password] = @Password, [CPassword] = @CPassword, [Department] = @Department, [JoinDate] = @JoinDate, [Designation] = @Designation, [Salary] = @Salary WHERE [DId] = @original_DId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([CPassword] = @original_CPassword) OR ([CPassword] IS NULL AND @original_CPassword IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([JoinDate] = @original_JoinDate) OR ([JoinDate] IS NULL AND @original_JoinDate IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_DId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_Mobile" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_CPassword" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
            <asp:Parameter Name="original_JoinDate" Type="String" />
            <asp:Parameter Name="original_Designation" Type="String" />
            <asp:Parameter Name="original_Salary" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="CPassword" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JoinDate" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="CPassword" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JoinDate" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter Name="original_DId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_Mobile" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_CPassword" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
            <asp:Parameter Name="original_JoinDate" Type="String" />
            <asp:Parameter Name="original_Designation" Type="String" />
            <asp:Parameter Name="original_Salary" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

