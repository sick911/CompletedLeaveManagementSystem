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
    public partial class LeaveStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = Server.UrlDecode(Request.QueryString["UserID"].ToString());

            try
            {
                using (SqlConnection conn = new SqlConnection("Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;"))
                {
                    //select * from LeaveApplication as l join UserLogin as u on l.EmployeeId = u.Id

                    //SqlCommand cmd = new SqlCommand($"select * from LeaveApplication where EmployeeId = (select Id from UserLogin where UserId = '{userid}')", conn);
                    // cmd.CommandType = CommandType.Text;
                    // conn.Open();
                    string strQ = $"select * from LeaveApplication where EmployeeId = (select Id from UserLogin where UserId = '{userid}')";
                    SqlDataAdapter dt = new SqlDataAdapter(strQ,conn);
                    DataSet ds = new DataSet();
                    dt.Fill(ds);

                    conn.Close();
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    
                }
            }
            catch (Exception )
            {
                 
            }

        }
    }
}