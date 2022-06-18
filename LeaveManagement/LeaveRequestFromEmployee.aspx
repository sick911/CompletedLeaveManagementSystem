<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveRequestFromEmployee.aspx.cs" Inherits="LeaveManagement.LeaveRequestFromEmployee" %>

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
            <asp:Label ID="lblrequest" runat="server" Text="Leave Requests From Employees"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Application_id" 
                OnRowCommand="GridView1_RowCommand" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
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
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:ImageButton ID="ibtnApprove" runat="server" CommandName="Approve" Height="26px" ImageUrl="~/Images/Approve.png"  Width="31px" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ibtnReject" runat="server" CommandName="Reject" Height="20px" ImageUrl="~/Images/reject.jpg" Width="33px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="btnGoBack" runat="server" Text="Back to Dashboard" OnClick="btnGoBack_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
