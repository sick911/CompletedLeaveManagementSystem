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
    public partial class LeaveRequestFromEmployee : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindEmployeeDetails();
        }
        protected void BindEmployeeDetails()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select Application_id,EmployeeId,EmployeeName,LeaveTypeName,DateOfApplication,NumberOfDays, StartDate,EndDate,Comments,DateOfApproval, Statuss  from LeaveApplication where Statuss = 'Pending'", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.SelectCommand = cmd;
            adapter.Fill(ds);
            conn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columnCount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columnCount;
                GridView1.Rows[0].Cells[0].Text = "No New Leave Request";
            }
        }

        string connectionString = "Data Source = IBM-PF33EVYW; Initial Catalog = LeaveManagement; Integrated Security = True;";
       
        
        private void UpdateTable(string status, int applicationid)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string update = $"update LeaveApplication set Statuss = '{status}',DateOfApproval = CAST (GETDATE () AS DATE) where Application_id = {applicationid}";
                SqlCommand cmd = new SqlCommand(update, conn);
                cmd.ExecuteNonQuery();
                conn.Close();

            }

            

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)

        {
            GridViewRow gvr = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            int applicationid = Convert.ToInt32(gvr.Cells[0].Text.ToString().Trim());
            string ManagerUserID = Server.UrlDecode(Request.QueryString["ManagerUserID"].ToString());
            if (e.CommandName.Equals("Approve"))
            {
                Label1.Text = "Approved";
                UpdateTable("Approved",applicationid);
                Response.Redirect("LeaveRequestFromEmployee.aspx?ManagerUserID=" + Server.UrlEncode(ManagerUserID));
            }
            if (e.CommandName.Equals("Reject"))
            {
                Label1.Text = "Reject";
                UpdateTable("Reject",applicationid);
                Response.Redirect("LeaveRequestFromEmployee.aspx?ManagerUserID=" + Server.UrlEncode(ManagerUserID));

            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGoBack_Click(object sender, EventArgs e)
        {
            string ManagerUserID = Server.UrlDecode(Request.QueryString["ManagerUserID"].ToString());
            Response.Redirect("ManagerDashboard.aspx?ManagerUserID="+Server.UrlEncode(ManagerUserID));


        }
    }

       
       

       
 }
