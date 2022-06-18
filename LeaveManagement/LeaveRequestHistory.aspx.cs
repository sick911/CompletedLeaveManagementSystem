using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveManagement
{
    public partial class LeaveRequestHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ManagerUserID = Server.UrlDecode(Request.QueryString["ManagerUserID"].ToString());

        }

        protected void btnHomePage_Click(object sender, EventArgs e)
        {

            string ManagerUserID = Server.UrlDecode(Request.QueryString["ManagerUserID"].ToString());
            Response.Redirect("ManagerDashboard.aspx?ManagerUserID=" + Server.UrlEncode(ManagerUserID));
        }
    }
}