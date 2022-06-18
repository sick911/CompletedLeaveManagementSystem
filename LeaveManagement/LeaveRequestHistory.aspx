<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveRequestHistory.aspx.cs" Inherits="LeaveManagement.LeaveRequestHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
            background:#78C0E0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Leave Request History</h3>
            <h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Application_id" DataSourceID="SqlDataSource1" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="Application_id" HeaderText="Application_id" InsertVisible="False" ReadOnly="True" SortExpression="Application_id" />
                        <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                        <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                        <asp:BoundField DataField="LeaveTypeName" HeaderText="LeaveTypeName" SortExpression="LeaveTypeName" />
                        <asp:BoundField DataField="DateOfApplication" HeaderText="DateOfApplication" SortExpression="DateOfApplication" />
                        <asp:BoundField DataField="NumberOfDays" HeaderText="NumberOfDays" SortExpression="NumberOfDays" />
                        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                        <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                        <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                        <asp:BoundField DataField="DateOfApproval" HeaderText="DateOfApproval" SortExpression="DateOfApproval" />
                        <asp:BoundField DataField="Statuss" HeaderText="Statuss" SortExpression="Statuss" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LeaveManagementConnectionString %>" SelectCommand="select * from LeaveApplication where Statuss != 'Pending'
"></asp:SqlDataSource>
            </h3>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="btnHomePage" runat="server" Text="Back to Dashboard" OnClick="btnHomePage_Click" />
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </form>
</body>
</html>
