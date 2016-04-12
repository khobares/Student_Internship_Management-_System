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
    public partial class SUpdateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successug.Visible = false;
            successg.Visible = false;
            successc.Visible = false;
            successsk.Visible = false;
            successw.Visible = false;
        }
        protected void submitupmoreug_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iUnderG where iSID= @sid and iMajor=@iUGMajor", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    sqlCommand.Parameters.AddWithValue("@iUGMajor", iUGMajor.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iUnderG");
                    if (ds.Tables["iUnderG"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No education to update. Please Check input or add Education ');", true);
                        iUGMajor.Text = String.Empty;
                        iUGGPA.Text = String.Empty;
                        iUGUniversity.Text = String.Empty;
                        iUGCountry.Value = String.Empty;
                        iUGYear.Text = String.Empty;

                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE iUnderG SET iGPA=@iUGGPA, iUniversity=@IUGUniversity, iCountry=@iUGCountry, iYear=@iUGYear WHERE iSID=@sidug AND iMajor=@iUGMajor");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sidug", iSID1);
                        cmd.Parameters.AddWithValue("@iUGMajor", iUGMajor.Text);
                        cmd.Parameters.AddWithValue("@iUGGPA", iUGGPA.Text);
                        cmd.Parameters.AddWithValue("@iUGUniversity", iUGUniversity.Text);
                        cmd.Parameters.AddWithValue("@iUGCountry", iUGCountry.Value);
                        cmd.Parameters.AddWithValue("@iUGYear", iUGYear.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iUGMajor.Text = String.Empty;
                        iUGGPA.Text = String.Empty;
                        iUGUniversity.Text = String.Empty;
                        iUGCountry.Value = String.Empty;
                        iUGYear.Text = String.Empty;
                        successug.Visible = true;
                    }
                }
            }
        }
        protected void submitupmoreg_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iGrad where iSID= @sid and iMajor=@iGMajor", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    sqlCommand.Parameters.AddWithValue("@iGMajor", iGMajor.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iGrad");
                    if (ds.Tables["iGrad"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No education to update. Please Check input or add Degree ');", true);
                        iGMajor.Text = String.Empty;
                        iGGPA.Text = String.Empty;
                        iGUniversity.Text = String.Empty;
                        iGCountry.Value = String.Empty;
                        iGYear.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE iGrad SET iGPA=@iGGPA, iUniversity=@IGUniversity, iCountry=@iGCountry, iYear=@iGYear WHERE iSID=@sidg AND iMajor=@iGMajor");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sidg", iSID1);
                        cmd.Parameters.AddWithValue("@iGMajor", iGMajor.Text);
                        cmd.Parameters.AddWithValue("@iGGPA", iGGPA.Text);
                        cmd.Parameters.AddWithValue("@iGUniversity", iGUniversity.Text);
                        cmd.Parameters.AddWithValue("@iGCountry", iGCountry.Value);
                        cmd.Parameters.AddWithValue("@iGYear", iGYear.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iGMajor.Text = String.Empty;
                        iGGPA.Text = String.Empty;
                        iGUniversity.Text = String.Empty;
                        iGCountry.Value = String.Empty;
                        iGYear.Text = String.Empty;
                        successg.Visible = true;
                    }

                }
            }
        }
        protected void submitupmorework_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iExperience where iSID= @sid and iC_Name=@iECName", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    sqlCommand.Parameters.AddWithValue("@iECName", iECname.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iExperience");
                    if (ds.Tables["iExperience"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No Experience to update. Please Check input or add Work ');", true);
                        iECname.Text = String.Empty;
                        iECyear.Text = String.Empty;
                        iETitle.Text = String.Empty;
                        iEDuties.Value = String.Empty;
                        iESalary.Text = String.Empty;
                        iMAC.Value = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE iExperience SET iC_Year=@iECyear, iC_Title=@iETitle, iC_Duties=@iEDuties, iC_Salary=@iESalary iMAC=@iMAC WHERE iSID=@sidw AND  iC_Name=@iECname");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sidw", iSID1);
                        cmd.Parameters.AddWithValue("@iECname", iECname.Text);
                        cmd.Parameters.AddWithValue("@iECyear", iECyear.Text);
                        cmd.Parameters.AddWithValue("@iETitle", iETitle.Text);
                        cmd.Parameters.AddWithValue("@iEDuties", iEDuties.Value);
                        cmd.Parameters.AddWithValue("@iESalary", iESalary.Text);
                        cmd.Parameters.AddWithValue("@iMAC", iMAC.Value);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iECname.Text = String.Empty;
                        iECyear.Text = String.Empty;
                        iETitle.Text = String.Empty;
                        iEDuties.Value = String.Empty;
                        iESalary.Text = String.Empty;
                        iMAC.Value = String.Empty;
                        successw.Visible = true;
                    }
                }
            }
        }
        protected void submitupmorecer_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iCertification where iSID= @sid AND iCertification=@iCertification", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    sqlCommand.Parameters.AddWithValue("@iCertification", iCertification.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iCertification");
                    if (ds.Tables["iCertification"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No certifications to update. Please Check input or add Certification ');", true);
                        iCertification.Text = String.Empty;
                        iBody.Text = String.Empty;
                    }
                    else
                    {

                        SqlCommand cmd = new SqlCommand("UPDATE iCertification SET iBody=@iBody WHERE iSID=@sidc AND iCertification=@iCertification");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sidc",iSID1);
                        cmd.Parameters.AddWithValue("@iCertification", iCertification.Text);
                        cmd.Parameters.AddWithValue("@iBody", iBody.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iCertification.Text = String.Empty;
                        iBody.Text = String.Empty;
                        successc.Visible = true;
                    }
                }
            }
        }
        protected void submitupmoreskill_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iSkills where iSID= @sid and iSkill=@iSkill", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    sqlCommand.Parameters.AddWithValue("@iSkill", iSkill.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iSkill");
                    if (ds.Tables["iSkill"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No skill to update. Please Check input or add Skill First ');", true);
                        iSkillG.Value = String.Empty;
                        iSkill.Text = String.Empty;
                        iSkillL.Value = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE iSkills SET iSkillG=@iSkillG, iLevel=@iSkillL WHERE iSID=@sids AND  iSkill=@iSkill");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sids", iSID1);
                        cmd.Parameters.AddWithValue("@iSkillG", iSkillG.Value);
                        cmd.Parameters.AddWithValue("@iSkill", iSkill.Text);
                        cmd.Parameters.AddWithValue("@iSkillL", iSkillL.Value);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iSkillG.Value = String.Empty;
                        iSkill.Text = String.Empty;
                        iSkillL.Value = String.Empty;
                        successsk.Visible = true;
                    }
                }
            }
        }
    }
}