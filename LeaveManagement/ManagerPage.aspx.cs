using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveManagement
{
    public partial class ManagerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ManagerLogin managerLogin = new ManagerLogin();
            using (LeaveManagementEntities entities = new LeaveManagementEntities())
            {
                managerLogin = entities.ManagerLogins.FirstOrDefault(u => u.UserId == txtManagerUsername.Text && u.Password == txtManagerPassword.Text);
                if (managerLogin != null)
                {

                    Response.Redirect("ManagerDashboard.aspx?ManagerUserID=" + Server.UrlEncode(txtManagerUsername.Text));
                }
                else
                {
                    Label1.Text = "Invalid User";
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtManagerPassword.Text = txtManagerUsername.Text= string.Empty;
        }
    }
}