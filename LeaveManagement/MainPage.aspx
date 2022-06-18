<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LeaveManagement.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        body{
            background:#78C0E0;
        }
        .DivButtons{
            margin:8% 20%;
            text-align:center;
            border-style:solid;
            border-block-color:red;
            padding: 100px 100px ;
            background-color:#449DD1;
        }
        
        .btn{
            background:#0E0E52;
        }
        h3{
            font-size:20px;
            font-weight:900;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="DivButtons">
                <h3>Leave Management System</h3>
            <br />
            <asp:Button ID="btnManager" class="btn btn-primary" runat="server" Text="Manager Login" Height="50px" Width="200px" OnClick="btnManager_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEmployee" class="btn btn-primary btnEmployee" runat="server" Text="Employee Login" Height="50px" Width="200px" OnClick="btnEmployee_Click" />

            <br />
            <br />

            </div>
        </div>
    </form>
</body>
</html>
