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
    public partial class EmployeeDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = Server.UrlDecode(Request.QueryString["UserID"].ToString());

            try
            {
                using (SqlConnection conn = new SqlConnection("Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;"))
                {
                    //select EmpName from EmployeeDetails where Empid = (select id from UserLogin where UserId = 'Koushik')

                    SqlCommand cmd = new SqlCommand($"select EmpName from EmployeeDetails where  Empid = (select id from UserLogin where UserId = '{userid}')", conn);
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

        protected void btnApplyLeave_Click(object sender, EventArgs e)
        {
            string userid = Server.UrlDecode(Request.QueryString["UserID"].ToString());
            Response.Redirect("EmployeeLeavePage.aspx?UserID=" + Server.UrlEncode(userid));
        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            string userid = Server.UrlDecode(Request.QueryString["UserID"].ToString());

            Response.Redirect("LeaveStatus.aspx?UserID=" + Server.UrlEncode(userid)); ;
        }
    }
}