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
    public partial class ManagerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Manageruserid = Server.UrlDecode(Request.QueryString["ManagerUserID"].ToString());

            try
            {
                using (SqlConnection conn = new SqlConnection("Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;"))
                {
                    //select EmpName from EmployeeDetails where Empid = (select id from UserLogin where UserId = 'Koushik')

                    SqlCommand cmd = new SqlCommand($"select EmpName from EmployeeDetails where  Empid = (select EmpID from ManagerLogin where UserId = '{Manageruserid}')", conn);
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        Label1.Text += dr[0].ToString();
                    }
                    conn.Close();
                    dr.Close();
                }
            }
            catch (Exception)
            {
            }
        }

        protected void btnLeaveRequest_Click(object sender, EventArgs e)
        {
            string ManagerUserID = Server.UrlDecode(Request.QueryString["ManagerUserID"].ToString());
            Response.Redirect("LeaveRequestFromEmployee.aspx?ManagerUserID="+Server.UrlEncode(ManagerUserID));
        }

        protected void btnLeaveRequestHistory_Click(object sender, EventArgs e)
        {

            string ManagerUserID = Server.UrlDecode(Request.QueryString["ManagerUserID"].ToString());
            Response.Redirect("LeaveRequestHistory.aspx?ManagerUserID=" + Server.UrlEncode(ManagerUserID));
        }
    }
}