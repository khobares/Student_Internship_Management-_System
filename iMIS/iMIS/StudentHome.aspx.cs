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
    public partial class StudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!this.IsPostBack)
            {
                this.BindRepeater();
            }
        }
        private void BindRepeater()
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            //String iSID1 = "1001";
            {
                using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT iSID, iS_FName, iS_LName, iS_Email, iS_Phone, iS_Status, iS_Gender, iS_Term, iS_Year, iS_Country from iStudent WHERE iSID=@iSID1", con))
                    {
                        cmd.Parameters.AddWithValue("@iSID1", iSID1);
                        DataTable dt = new DataTable();
                        SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                        con.Open();
                        sqlDa.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {

                            liSID.Text = dt.Rows[0]["iSID"].ToString();
                            topfname.Text = dt.Rows[0]["iS_FName"].ToString();
                            toplname.Text = dt.Rows[0]["iS_LName"].ToString();
                            lSFName.Text = dt.Rows[0]["iS_FName"].ToString();
                            lSLName.Text = dt.Rows[0]["iS_LName"].ToString();
                            lSEmail.Text = dt.Rows[0]["iS_Email"].ToString();
                            lSPhone.Text = dt.Rows[0]["iS_Phone"].ToString();
                            lSStatus.Text = dt.Rows[0]["iS_Status"].ToString();
                            lSGender.Text = dt.Rows[0]["iS_Gender"].ToString();
                            lSCountry.Text = dt.Rows[0]["iS_Country"].ToString();
                            lSTerm.Text = dt.Rows[0]["iS_Term"].ToString();
                            lSYear.Text = dt.Rows[0]["iS_Year"].ToString();
                        }
                        con.Close();
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM iGRAD WHERE iSID=@iSID1 ", con))
                    {
                        cmd.Parameters.AddWithValue("@iSID1", iSID1);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sHomeG.DataSource = dt;
                            sHomeG.DataBind();
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM iUnderG WHERE iSID=@iSID1 ", con))
                    {
                        cmd.Parameters.AddWithValue("@iSID1", iSID1);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sHomeUG.DataSource = dt;
                            sHomeUG.DataBind();
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM iExperience WHERE iSID=@iSID1 ", con))
                    {
                        cmd.Parameters.AddWithValue("@iSID1", iSID1);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sHomeExp.DataSource = dt;
                            sHomeExp.DataBind();
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM iSkills WHERE iSID=@iSID1 ", con))
                    {
                        cmd.Parameters.AddWithValue("@iSID1", iSID1);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sHomeSk.DataSource = dt;
                            sHomeSk.DataBind();
                        }
                    }
                }
            }
        }
    }
}