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
    public partial class EmployeeLeavePage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;");
        public int EmpID;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            List<LeaveType> leaves;
            using(LeaveManagementEntities entities = new LeaveManagementEntities())
            {
                leaves = entities.LeaveTypes.ToList();
                GridView1.DataSource = leaves;
                GridView1.DataBind();
            }
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
                        lblWelcome.Text += dr[0].ToString();
                    }
                    conn.Close();
                    dr.Close();
                }
            }
            catch (Exception)
            {
            }
        }

        

        

        protected void tbnApply_Click(object sender, EventArgs e)
        {
            LeaveApplication leaveApplication = new LeaveApplication();

            DateTime shortdate = DateTime.Now;
            

            string date = shortdate.ToShortDateString();

            //String shortDateTime = dateToDisplay.ToShortDateString();

            leaveApplication.DateOfApplication = DateTime.Now;
            leaveApplication.Comments = txtComments.Text;
            leaveApplication.NumberOfDays = Convert.ToInt32(txtNumberOfDays.Text);
            leaveApplication.StartDate = Convert.ToDateTime(txtStartDate.Text);
            leaveApplication.EndDate = Convert.ToDateTime(txtEndDate.Text);
            leaveApplication.LeaveTypeName = DropDownList1.SelectedValue;
            leaveApplication.Statuss = "Pending";
            
            

            string userid = Server.UrlDecode(Request.QueryString["UserID"].ToString());
            



            try
            {
                using(SqlConnection conn = new SqlConnection("Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;"))
                {
                    SqlCommand cmd = new SqlCommand($"select Id from userlogin where UserID = '{userid}'", conn);
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        EmpID = Convert.ToInt16($"{dr[0]}");
                        leaveApplication.EmployeeId = Convert.ToInt32($"{dr[0]}");
                    }
                    conn.Close();
                    dr.Close();
                }
            }
            catch (Exception )
            {
            }

            try
            {
                using (SqlConnection conn = new SqlConnection("Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;"))
                {

                    SqlCommand cmd = new SqlCommand($"select EmpName from EmployeeDetails where {leaveApplication.EmployeeId.Value} = Empid", conn);
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        lblWelcome.Text = dr[0].ToString();
                        leaveApplication.EmployeeName = ($"{dr[0]}");
                    }
                    conn.Close();
                    dr.Close();
                }
            }
            catch (Exception)
            {
             }


                using (LeaveManagementEntities entity = new LeaveManagementEntities())
            {
                entity.LeaveApplications.Add(leaveApplication);
                entity.SaveChanges();
            }
            Response.Redirect("EmployeeDashboard.aspx?UserID=" + Server.UrlEncode(userid));

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            string userid = Server.UrlDecode(Request.QueryString["UserID"].ToString());
            Response.Redirect("EmployeePage.aspx?UserID=" + Server.UrlEncode(userid));
        }

       
    }
}