using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace iMIS
{
    public partial class UpdateJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successjob.Visible = false;
        }
        protected void submitupjob_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iJob where iC_Name= @iJCName", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@iJCName", iJCname.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iJob");
                    if (ds.Tables["iJob"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No such job present. Check the Company Name. ');", true);
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
                        SqlCommand cmd = new SqlCommand("UPDATE iJob SET iJobGroup=@iCType, iPosition=@iJCPosition, iDescription=@iJDescription, iRequirements=@iJRequirements, iResponsibility=@iJResponsibilities, iSalary=@iJSalary WHERE iC_Name=@iJCname ");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@iJCname", iJCname.Text);
                        cmd.Parameters.AddWithValue("@iCType", iCType.Value);
                        cmd.Parameters.AddWithValue("@iJCPosition", iJCPosition.Text);
                        cmd.Parameters.AddWithValue("@iJDescription", iJDescription.Value);
                        cmd.Parameters.AddWithValue("@iJRequirements", iJRequirements.Value);
                        cmd.Parameters.AddWithValue("@iJResponsibilities", iJResponsibilities.Value);
                        cmd.Parameters.AddWithValue("@iJSalary", iJSalary.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iJCname.Text = String.Empty;
                        iCType.Value = String.Empty;
                        iJCPosition.Text = String.Empty;
                        iJDescription.Value = String.Empty;
                        iJRequirements.Value = String.Empty;
                        iJResponsibilities.Value = String.Empty;
                        iJSalary.Text = String.Empty;
                        successjob.Visible = true;
                    }
                }
            }
        }
    }
}