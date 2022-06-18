<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="LeaveManagement.EmployeeDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background:#78C0E0;

        }
        .MainDiv{
            margin:8% 20%;
            text-align:center;
            border-block-color:red;
            padding: 25px 100px ;
            
        }
       #btnApplyLeave, #btnStatus{
           padding:13px 25px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="MainDiv">
                
            <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>
                
                <h2>Employee Dashboard</h2>
            <asp:Button ID="btnApplyLeave" runat="server" Text="Apply for Leave" OnClick="btnApplyLeave_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnStatus" runat="server" Text="Check Leave Status" OnClick="btnStatus_Click" />
            <br />
                </div>
        </div>
    </form>
</body>
</html>
