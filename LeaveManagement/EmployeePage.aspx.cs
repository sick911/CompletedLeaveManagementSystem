using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LeaveManagement
{
    public partial class EmployeePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsername.Text = txtPassword.Text = string.Empty;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserLogin userLogin = new UserLogin();
            using(LeaveManagementEntities entities = new LeaveManagementEntities())
            {
                userLogin = entities.UserLogins.FirstOrDefault( u => u.UserId == txtUsername.Text && u.Password == txtPassword.Text);
                if(userLogin != null)
                {
                  
                    Response.Redirect("EmployeeDashboard.aspx?UserID="+ Server.UrlEncode(txtUsername.Text));
                }
                else
                {
                    Label1.Text = "Invalid User";
                }
            }

        }
    }
}
