<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="LeaveManagement.EmployeePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        body{
            background:#78C0E0;

        }
        .MainDiv{
            margin:8% 20%;
            text-align:center;
            border-style:solid;
            border-block-color:red;
            padding: 25px 100px ;
            background-color:#449DD1;
        }
        h3{
            font-size:20px;
            font-weight:900;
        }
        #lblUserName, #lblPassword{
            font-weight:900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="MainDiv">
                <h3>Employee Login</h3>

            <br />
            <asp:Label ID="lblUserName" runat="server" Text="User Name "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="user name required">*</asp:RequiredFieldValidator>

            <br />
            <br />
            <br />
            &nbsp;
            <asp:Label ID="lblPassword" runat="server" Text="Password "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" class="text-danger" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnLogin" class="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btnCancel_Click" />
            <br />
            <br />
            <br />
            
                </div>

        </div>
    </form>
</body>
</html>
