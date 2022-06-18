<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerDashboard.aspx.cs" Inherits="LeaveManagement.ManagerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
            background-color:#78C0E0;
        }
          .MainDiv{
            text-align:center;
          
            background-color:#78C0E0;
            padding-top:150px;
            padding-bottom:500px;
            
        }
          h2{
              font-family:sans-serif;
              font-weight:900;
          }
        #btnLeaveRequest,#btnLeaveRequestHistory{
           padding:13px 25px;
       }
          
    </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <div class="MainDiv">
                    <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>

            <h2>Manager Dashboard</h2>
            <br />
            <br />
                <div class="buttons">
            <asp:Button ID="btnLeaveRequest" runat="server" CssClass="btn" Text="Pending Leave Request" OnClick="btnLeaveRequest_Click" Height="50px" Width="250px" />
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            <asp:Button ID="btnLeaveRequestHistory" runat="server" CssClass="btn " Text="Leave Request History" OnClick="btnLeaveRequestHistory_Click"  Height="50px" Width="250px" />
           </div>
                    <br />
            <br />
                </div>
        </div>
    </form>
</body>
</html>
