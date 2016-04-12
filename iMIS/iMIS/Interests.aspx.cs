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
    public partial class Interests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successint.Visible = false;
            if (!this.IsPostBack)
            {
                this.BindRepeater();
            }
        }
        protected void submitaddint_Click(object sender, EventArgs e)
        {
            String iSID = Convert.ToString(Session["iSID"]);
            //String iSID = "1001";
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iInterest where iSID= @sid AND iS_Interest=@iInterest", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID);
                    sqlCommand.Parameters.AddWithValue("@iInterest", iSInterest.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iInterest");
                    if (ds.Tables["iInterest"].Rows.Count == 0)
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO iInterest(iS_Interest, iSID) VALUES(@iSInterest, @sid)", connection);
                        cmd.Parameters.AddWithValue("@sid", iSID);
                        cmd.Parameters.AddWithValue("@iSInterest", iSInterest.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iSInterest.Text = String.Empty;
                        successint.Visible = true;
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Interest already added! ');", true);
                        iSInterest.Text = String.Empty;
                    }
                }
            }
        }
        private void BindRepeater()
        {
            String iSID = Convert.ToString(Session["iSID"]);
            // iSID = "1001";
            using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM iInterest WHERE iSID=@iSID", con))
                {
                    cmd.Parameters.AddWithValue("@iSID", iSID);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        listint.DataSource = dt;
                        listint.DataBind();
                    }
                }

            }
        }
    }
}