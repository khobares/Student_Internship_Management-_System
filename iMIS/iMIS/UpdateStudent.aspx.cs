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
    public partial class UpdateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successstu.Visible = false;
            successug.Visible = false;
            successg.Visible = false;
            successc.Visible = false;
            successsk.Visible = false;
            successw.Visible = false;
        }
        protected void submitupstu_Click(object sender, EventArgs e)
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
                        sfname.Text = String.Empty;
                        smname.Text = String.Empty;
                        slname.Text = String.Empty;
                        semail.Text = String.Empty;
                        sphone.Text = String.Empty;
                        iStatus.Value = String.Empty;
                        sgender.Value = String.Empty;
                        iTerm.Value = String.Empty;
                        syear.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE iStudent SET iS_FName=@sfname, iS_MName=@smname, iS_LName=@slname, iS_EMail=@semail, iS_Phone=@sphone, iS_Country=@iSCountry, iS_Status=@iStatus, iS_Gender=@sgender, iS_Term=@iTerm, iS_Year=@syear WHERE iSID=@sid");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sid", sid.Text);
                        cmd.Parameters.AddWithValue("@sfname", sfname.Text);
                        cmd.Parameters.AddWithValue("@smname", smname.Text);
                        cmd.Parameters.AddWithValue("@slname", slname.Text);
                        cmd.Parameters.AddWithValue("@semail", semail.Text);
                        cmd.Parameters.AddWithValue("@sphone", sphone.Text);
                        cmd.Parameters.AddWithValue("@iSCountry", iSCountry.Value);
                        cmd.Parameters.AddWithValue("@iStatus", iStatus.Value);
                        cmd.Parameters.AddWithValue("@sgender", sgender.Value);
                        cmd.Parameters.AddWithValue("@iTerm", iTerm.Value);
                        cmd.Parameters.AddWithValue("@syear", syear.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sid.Text = String.Empty;
                        sfname.Text = String.Empty;
                        smname.Text = String.Empty;
                        slname.Text = String.Empty;
                        semail.Text = String.Empty;
                        sphone.Text = String.Empty;
                        iStatus.Value = String.Empty;
                        sgender.Value = String.Empty;
                        iTerm.Value = String.Empty;
                        syear.Text = String.Empty;
                        successstu.Visible = true;
                    }
                }
            }
        }
        protected void submitupmoreug_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iUnderG where iSID= @sid and iMajor=@iUGMajor", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", sidug.Text);
                    sqlCommand.Parameters.AddWithValue("@iUGMajor", iUGMajor.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iUnderG");
                    if (ds.Tables["iUnderG"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No education to update. Please check Student ID or Major ');", true);
                        sidug.Text = String.Empty;
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
                        cmd.Parameters.AddWithValue("@sidug", sidug.Text);
                        cmd.Parameters.AddWithValue("@iUGMajor", iUGMajor.Text);
                        cmd.Parameters.AddWithValue("@iUGGPA", iUGGPA.Text);
                        cmd.Parameters.AddWithValue("@iUGUniversity", iUGUniversity.Text);
                        cmd.Parameters.AddWithValue("@iUGCountry", iUGCountry.Value);
                        cmd.Parameters.AddWithValue("@iUGYear", iUGYear.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sidug.Text = String.Empty;
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
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iGrad where iSID= @sid and iMajor=@iGMajor", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", sidg.Text);
                    sqlCommand.Parameters.AddWithValue("@iGMajor", iGMajor.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iGrad");
                    if (ds.Tables["iGrad"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No education to update. Please check Student ID of Major ');", true);
                        sidg.Text = String.Empty;
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
                        cmd.Parameters.AddWithValue("@sidg", sidg.Text);
                        cmd.Parameters.AddWithValue("@iGMajor", iGMajor.Text);
                        cmd.Parameters.AddWithValue("@iGGPA", iGGPA.Text);
                        cmd.Parameters.AddWithValue("@iGUniversity", iGUniversity.Text);
                        cmd.Parameters.AddWithValue("@iGCountry", iGCountry.Value);
                        cmd.Parameters.AddWithValue("@iGYear", iGYear.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sidg.Text = String.Empty;
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
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iExperience where iSID= @sid and iC_Name=@iECName", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", sidw.Text);
                    sqlCommand.Parameters.AddWithValue("@iECName", iECname.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iExperience");
                    if (ds.Tables["iExperience"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No Experience to update. Please check Student ID or Company Name ');", true);
                        sidw.Text = String.Empty;
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
                        cmd.Parameters.AddWithValue("@sidw", sidw.Text);
                        cmd.Parameters.AddWithValue("@iECname", iECname.Text);
                        cmd.Parameters.AddWithValue("@iECyear", iECyear.Text);
                        cmd.Parameters.AddWithValue("@iETitle", iETitle.Text);
                        cmd.Parameters.AddWithValue("@iEDuties", iEDuties.Value);
                        cmd.Parameters.AddWithValue("@iESalary", iESalary.Text);
                        cmd.Parameters.AddWithValue("@iMAC", iMAC.Value);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sidw.Text = String.Empty;
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
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iCertification where iSID= @sid, iCertification=@iCertification", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", sidc.Text);
                    sqlCommand.Parameters.AddWithValue("@iCertification", iCertification.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iCertification");
                    if (ds.Tables["iCertification"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No certifications to update. Please check the Student ID or Certification ');", true);
                        sidc.Text = String.Empty;
                        iCertification.Text = String.Empty;
                        iBody.Text = String.Empty;
                    }
                    else
                    {

                        SqlCommand cmd = new SqlCommand("UPDATE iCertification SET iBody=@iBody WHERE iSID=@sidc AND iCertification=@iCertification");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sidc", sidc.Text);
                        cmd.Parameters.AddWithValue("@iCertification", iCertification.Text);
                        cmd.Parameters.AddWithValue("@iBody", iBody.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sidc.Text = String.Empty;
                        iCertification.Text = String.Empty;
                        iBody.Text = String.Empty;
                        successc.Visible = true;
                    }
                }
            }
        }
        protected void submitupmoreskill_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iSkills where iSID= @sid and iSkill=@iSkill", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", sids.Text);
                    sqlCommand.Parameters.AddWithValue("@iSkill", iSkill.Text);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iSkill");
                    if (ds.Tables["iSkill"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('No skill to update. Please check Student ID ');", true);
                        sids.Text = String.Empty;
                        iSkillG.Value = String.Empty;
                        iSkill.Text = String.Empty;
                        iSkillL.Value = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE iSkills SET iSkillG=@iSkillG, iLevel=@iSkillL WHERE iSID=@sids AND  iSkill=@iSkill");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sids", sids.Text);
                        cmd.Parameters.AddWithValue("@iSkillG", iSkillG.Value);
                        cmd.Parameters.AddWithValue("@iSkill", iSkill.Text);
                        cmd.Parameters.AddWithValue("@iSkillL", iSkillL.Value);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sids.Text = String.Empty;
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