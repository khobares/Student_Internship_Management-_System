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
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successusr.Visible = false;
        }
        protected void submitaddusr_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iUser where iSID= @sid or UName=@iUName", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID.Text);
                    sqlCommand.Parameters.AddWithValue("@iUName", iUName.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iUser");
                    if (ds.Tables["iUser"].Rows.Count == 0)
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO iUser(UName, iSID) VALUES(@uname, @sid)", connection);
                        cmd.Parameters.AddWithValue("@sid", iSID.Text);
                        cmd.Parameters.AddWithValue("@uname", iUName.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iSID.Text = String.Empty;
                        iUName.Text = String.Empty;
                        successusr.Visible = true;
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('User name or Student ID already present in Death Star ');", true);
                        iSID.Text = String.Empty;
                        iUName.Text = String.Empty;
                    }
                }
            }
        }
    }
}