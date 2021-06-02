<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="ManageCustomer.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <p class="auto-style1">
        <strong>Manage Customers</strong></p>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="bod" HeaderText="bod" SortExpression="bod" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="cpassword" HeaderText="cpassword" SortExpression="cpassword" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="pin_code" HeaderText="pin_code" SortExpression="pin_code" />
                <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White"   HorizontalAlign="Center"/>
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [register] WHERE [Id] = @original_Id AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) AND (([bod] = @original_bod) OR ([bod] IS NULL AND @original_bod IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([cpassword] = @original_cpassword) OR ([cpassword] IS NULL AND @original_cpassword IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) AND (([pin_code] = @original_pin_code) OR ([pin_code] IS NULL AND @original_pin_code IS NULL)) AND (([mobileno] = @original_mobileno) OR ([mobileno] IS NULL AND @original_mobileno IS NULL))" InsertCommand="INSERT INTO [register] ([first_name], [last_name], [bod], [gender], [email], [password], [cpassword], [address], [city], [state], [pin_code], [mobileno]) VALUES (@first_name, @last_name, @bod, @gender, @email, @password, @cpassword, @address, @city, @state, @pin_code, @mobileno)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [register]" UpdateCommand="UPDATE [register] SET [first_name] = @first_name, [last_name] = @last_name, [bod] = @bod, [gender] = @gender, [email] = @email, [password] = @password, [cpassword] = @cpassword, [address] = @address, [city] = @city, [state] = @state, [pin_code] = @pin_code, [mobileno] = @mobileno WHERE [Id] = @original_Id AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) AND (([bod] = @original_bod) OR ([bod] IS NULL AND @original_bod IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([cpassword] = @original_cpassword) OR ([cpassword] IS NULL AND @original_cpassword IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) AND (([pin_code] = @original_pin_code) OR ([pin_code] IS NULL AND @original_pin_code IS NULL)) AND (([mobileno] = @original_mobileno) OR ([mobileno] IS NULL AND @original_mobileno IS NULL))" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter Name="original_bod" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_cpassword" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state" Type="String" />
                <asp:Parameter Name="original_pin_code" Type="Int32" />
                <asp:Parameter Name="original_mobileno" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="bod" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="cpassword" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="pin_code" Type="Int32" />
                <asp:Parameter Name="mobileno" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="bod" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="cpassword" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="pin_code" Type="Int32" />
                <asp:Parameter Name="mobileno" Type="Decimal" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter Name="original_bod" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_cpassword" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state" Type="String" />
                <asp:Parameter Name="original_pin_code" Type="Int32" />
                <asp:Parameter Name="original_mobileno" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

