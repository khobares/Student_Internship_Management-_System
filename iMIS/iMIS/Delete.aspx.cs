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
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successstu.Visible = false;
            successjob.Visible = false;
            successcomp.Visible = false;
        }
        protected void submitdelstu_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iStudent where iSID= @sid", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", sid.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iStudent");
                    if (ds.Tables["iStudent"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Student not Present in Death Star ');", true);
                        sid.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("DELETE iStudent WHERE iSID=@sid");
                        SqlCommand cmd1 = new SqlCommand("DELETE iUser WHERE iSID=@sid");
                        cmd.Connection = connection;
                        cmd1.Connection = connection;
                        cmd.Parameters.AddWithValue("@sid", sid.Text);
                        cmd1.Parameters.AddWithValue("@sid", sid.Text);
                        cmd.ExecuteNonQuery();
                        cmd1.ExecuteNonQuery();
                        connection.Close();
                        sid.Text = String.Empty;
                        successstu.Visible = true;
                    }
                }
            }
        }
        protected void submitdelcomp_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iCompany where iC_Name= @iCName", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@iCName", iCname.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iCompany");
                    if (ds.Tables["iCompany"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No such company present. Check the Company Name. ');", true);
                        iCname.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("DELETE iCompany WHERE iC_Name=@iCName");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@iCName", iCname.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iCname.Text = String.Empty;
                        successcomp.Visible = true;
                    }
                }
            }
        }
        protected void submitdeljob_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iJob where iC_Name= @iJCName and iPosition=@iJCPosition", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@iJCName", iJCname.Text);
                    sqlCommand.Parameters.AddWithValue("@iJCPosition", iJCPosition.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iJob");
                    if (ds.Tables["iJob"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No such job present. Check the Company Name and the Position. ');", true);
                        iJCname.Text = String.Empty;
                        iJCPosition.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("DELETE iJob WHERE iC_Name=@iJCname AND iPosition=@iJCPosition");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@iJCname", iJCname.Text);
                        cmd.Parameters.AddWithValue("@iJCPosition", iJCPosition.Text);
                        connection.Open();
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iJCname.Text = String.Empty;
                        iJCPosition.Text = String.Empty;
                        successjob.Visible = true;
                    }
                }
            }
        }
    }
}