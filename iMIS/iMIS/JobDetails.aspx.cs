using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iMIS
{
    public partial class JobDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successjob.Visible = false;
        }
        protected void submitaddjob_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iCompany where iC_Name= @iJCName", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@iJCName", iJCname.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iCompany");
                    if (ds.Tables["iCompany"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Cant Add Job. Please check if the Company is present on Death Star ');", true);
                        iJCname.Text = String.Empty;
                        iCType.Value = String.Empty;
                        iJCPosition.Text = String.Empty;
                        iJDescription.Value = String.Empty;
                        iJResponsibilities.Value = String.Empty;
                        iJRequirements.Value = String.Empty;
                        iJSalary.Text = String.Empty;
                    }
                    else
                    {

                        SqlCommand cmd = new SqlCommand("INSERT INTO iJob(iC_Name, iJobGroup, iPosition, iDescription, iRequirements, iResponsibility, iSalary) VALUES(@iJCname, @iCType, @iJCPosition, @iJDescription, @iJResponsibilities, @iJRequirements, @iJSalary)");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@iJCname", iJCname.Text);
                        cmd.Parameters.AddWithValue("@iCType", iCType.Value);
                        cmd.Parameters.AddWithValue("@iJCPosition", iJCPosition.Text);
                        cmd.Parameters.AddWithValue("@iJDescription", iJDescription.Value);
                        cmd.Parameters.AddWithValue("@iJResponsibilities", iJResponsibilities.Value);
                        cmd.Parameters.AddWithValue("@iJRequirements", iJRequirements.Value);
                        cmd.Parameters.AddWithValue("@iJSalary", iJSalary.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iJCname.Text = String.Empty;
                        iCType.Value = String.Empty;
                        iJCPosition.Text = String.Empty;
                        iJDescription.Value = String.Empty;
                        iJResponsibilities.Value = String.Empty;
                        iJRequirements.Value = String.Empty;
                        iJSalary.Text = String.Empty;
                        successjob.Visible = true;
                    }
                }
            }
        }
    }
}