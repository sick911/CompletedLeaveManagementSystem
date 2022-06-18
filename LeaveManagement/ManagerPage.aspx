<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerPage.aspx.cs" Inherits="LeaveManagement.ManagerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
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
        #lblManagerPassword, #lblManagerUserName{
            font-weight:900;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="MainDiv">
                           <h3>Manager Login</h3>
                           <p>&nbsp;</p>
            <p>&nbsp;<asp:Label ID="lblManagerUserName" runat="server" Text="User Name "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtManagerUsername" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtManagerUsername" ErrorMessage="username required" ForeColor="Red">*</asp:RequiredFieldValidator>

            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblManagerPassword" runat="server" Text="Password "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtManagerPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtManagerPassword" ErrorMessage="password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" class="text-danger" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnLogin" class="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" class="btn btn-danger" Text="Cancel" OnClick="btnCancel_Click" />
                           </p>
            <p>&nbsp;</p>
                </div>
        </div>
    </form>
    <p>
        s</p>
</body>
</html>
