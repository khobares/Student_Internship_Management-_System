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
    public partial class Update_Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successcomp.Visible = false;
        }
        protected void submitupcomp_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iCompany where iC_Name= @iCName", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@iCName", iCName.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iCompany");
                    if (ds.Tables["iCompany"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No such company present. Check the Company Name. ');", true);
                        iCName.Text = String.Empty;
                        iCType.Value = String.Empty;
                        iCAddress.Text = String.Empty;
                        iCCity.Text = String.Empty;
                        iCCountry.Value = String.Empty;
                        iCPost.Text = String.Empty;
                        iCFname.Text = String.Empty;
                        iCLname.Text = String.Empty;
                        iCPosition.Text = String.Empty;
                        iCemail.Text = String.Empty;
                        iCWeb.Text = String.Empty;
                        iNotes.Value = String.Empty;
                        iCPhone.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("Update iCompany SET iC_Type=@iCType, iC_Address=@iCAddress, iC_City=@iCCity, iC_Country=@iCCountry, iC_Post=@iCPost, iC_FName=@iCFname, iC_LName=@iCLname, iC_Position=@iCPosition, iC_Email=@iCemail, iC_Web=@iCWeb, iC_Notes=@iNotes, iC_Phone=@iCPhone WHERE iC_Name=@iCName");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@iCName", iCName.Text);
                        cmd.Parameters.AddWithValue("@iCType", iCType.Value);
                        cmd.Parameters.AddWithValue("@iCAddress", iCAddress.Text);
                        cmd.Parameters.AddWithValue("@iCCity", iCCity.Text);
                        cmd.Parameters.AddWithValue("@iCCountry", iCCountry.Value);
                        cmd.Parameters.AddWithValue("@iCPost", iCPost.Text);
                        cmd.Parameters.AddWithValue("@iCFName", iCFname.Text);
                        cmd.Parameters.AddWithValue("@iCLName", iCLname.Text);
                        cmd.Parameters.AddWithValue("@iCPosition", iCPosition.Text);
                        cmd.Parameters.AddWithValue("@iCemail", iCemail.Text);
                        cmd.Parameters.AddWithValue("@iCWeb", iCWeb.Text);
                        cmd.Parameters.AddWithValue("@iNotes", iNotes.Value);
                        cmd.Parameters.AddWithValue("@iCPhone", iCPhone.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iCName.Text = String.Empty;
                        iCType.Value = String.Empty;
                        iCAddress.Text = String.Empty;
                        iCCity.Text = String.Empty;
                        iCCountry.Value = String.Empty;
                        iCPost.Text = String.Empty;
                        iCFname.Text = String.Empty;
                        iCLname.Text = String.Empty;
                        iCPosition.Text = String.Empty;
                        iCemail.Text = String.Empty;
                        iCWeb.Text = String.Empty;
                        iNotes.Value = String.Empty;
                        iCPhone.Text = String.Empty;
                        successcomp.Visible = true;
                    }
                }
            }
        }
    }
}