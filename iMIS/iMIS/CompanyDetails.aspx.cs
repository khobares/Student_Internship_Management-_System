using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace iMIS
{
    public partial class CompanyDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successcomp.Visible = false;
        }
        protected void submitaddcomp_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO iCompany(iC_Name, iC_Type, iC_Address, iC_City, iC_Country, iC_Post, iC_FName, iC_LName, iC_Position, iC_Email, iC_Web, iC_Notes, iC_Phone) VALUES(@iCName, @iCType, @iCAddress, @iCCity, @iCCountry, @iCPost, @iCFName, @iCLName, @iCPosition, @iCEmail, @iCWeb, @iCNotes, @iCPhone )");
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
                cmd.Parameters.AddWithValue("@iCEmail", iCEmail.Text);
                cmd.Parameters.AddWithValue("@iCWeb", iCWeb.Text);
                cmd.Parameters.AddWithValue("@iCNotes", iCNotes.Value);
                cmd.Parameters.AddWithValue("@iCPhone", iCPhone.Text);
                connection.Open();
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
                iCEmail.Text = String.Empty;
                iCWeb.Text = String.Empty;
                iCNotes.Value = String.Empty;
                iCPhone.Text = String.Empty;
                successcomp.Visible = true;
            }
        }
    }
}