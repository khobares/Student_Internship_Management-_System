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
    public partial class AddStudent : System.Web.UI.Page
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
        protected void submitaddstu_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iStudent where iSID= @sid", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iStudent");
                    if (ds.Tables["iStudent"].Rows.Count == 0)
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO iStudent(iSID, iS_FName, iS_MName, iS_LName, iS_EMail, iS_Phone, iS_Country, iS_Status, iS_Gender, iS_Term, iS_Year) VALUES(@sid, @sfname, @smname, @slname, @semail, @sphone, @iSCountry, @sstatus, @sgender, @sterm, @syear)");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sid", iSID1);
                        cmd.Parameters.AddWithValue("@sfname", sfname.Text);
                        cmd.Parameters.AddWithValue("@smname", smname.Text);
                        cmd.Parameters.AddWithValue("@slname", slname.Text);
                        cmd.Parameters.AddWithValue("@semail", semail.Text);
                        cmd.Parameters.AddWithValue("@sphone", sphone.Text);
                        cmd.Parameters.AddWithValue("@iSCountry", iSCountry.Value);
                        cmd.Parameters.AddWithValue("@sstatus", sstatus.Value);
                        cmd.Parameters.AddWithValue("@sgender", sgender.Value);
                        cmd.Parameters.AddWithValue("@sterm", sterm.Value);
                        cmd.Parameters.AddWithValue("@syear", syear.Text);
                        connection.Open();
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sfname.Text = String.Empty;
                        smname.Text = String.Empty;
                        slname.Text = String.Empty;
                        semail.Text = String.Empty;
                        sphone.Text = String.Empty;
                        iSCountry.Value = String.Empty;
                        sstatus.Value = String.Empty;
                        sgender.Value = String.Empty;
                        sterm.Value = String.Empty;
                        syear.Text = String.Empty;
                        successstu.Visible = true;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("UPDATE iStudent SET iS_FName=@sfname, iS_MName=@smname, iS_LName=@slname, iS_EMail=@semail, iS_Phone=@sphone, iS_Country=@iSCountry, iS_Status=@iStatus, iS_Gender=@sgender, iS_Term=@iTerm, iS_Year=@syear WHERE iSID=@sid");
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sid", iSID1);
                        cmd.Parameters.AddWithValue("@sfname", sfname.Text);
                        cmd.Parameters.AddWithValue("@smname", smname.Text);
                        cmd.Parameters.AddWithValue("@slname", slname.Text);
                        cmd.Parameters.AddWithValue("@semail", semail.Text);
                        cmd.Parameters.AddWithValue("@sphone", sphone.Text);
                        cmd.Parameters.AddWithValue("@iSCountry", iSCountry.Value);
                        cmd.Parameters.AddWithValue("@iStatus", sstatus.Value);
                        cmd.Parameters.AddWithValue("@sgender", sgender.Value);
                        cmd.Parameters.AddWithValue("@iTerm", sterm.Value);
                        cmd.Parameters.AddWithValue("@syear", syear.Text);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        sfname.Text = String.Empty;
                        smname.Text = String.Empty;
                        slname.Text = String.Empty;
                        semail.Text = String.Empty;
                        sphone.Text = String.Empty;
                        sstatus.Value = String.Empty;
                        sgender.Value = String.Empty;
                        sterm.Value = String.Empty;
                        syear.Text = String.Empty;
                        successstu.Visible = false;
                    }
                }
            }
        }
        protected void submitaddmoreug_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iStudent where iSID= @sid", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iStudent");
                    if (ds.Tables["iStudent"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Please Add Personal Details to begin with ');", true);
                        iUGMajor.Text = String.Empty;
                        iUGGPA.Text = String.Empty;
                        iUGUniversity.Text = String.Empty;
                        iUGCountry.Value = String.Empty;
                        iUGYear.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO iUnderG(iSID, iMajor, iGPA, iUniversity, iCountry, iYear) VALUES(@sidug, @iUGMajor, @iUGGPA, @IUGUniversity, @iUGCountry, @iUGYear)", connection);
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
        protected void submitaddmoreg_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iStudent where iSID= @sid", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iStudent");
                    if (ds.Tables["iStudent"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Please Add Personal Details to begin with ');", true);
                        iGMajor.Text = String.Empty;
                        iGGPA.Text = String.Empty;
                        iGUniversity.Text = String.Empty;
                        iGCountry.Value = String.Empty;
                        iGYear.Text = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO iGrad(iSID, iMajor, iGPA, iUniversity, iCountry, iYear) VALUES(@sidg, @iGMajor, @iGGPA, @IGUniversity, @iGCountry, @iGYear)", connection);
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
        protected void submitaddmorework_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iStudent where iSID= @sid", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iStudent");
                    if (ds.Tables["iStudent"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Please add Student Details to begin with ');", true);
                        iECName.Text = String.Empty;
                        iECYear.Text = String.Empty;
                        iECTitle.Text = String.Empty;
                        iECDuties.Value = String.Empty;
                        iMAC.Value = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO iExperience(iSID, iC_Name, iC_Year, iC_Title, iC_Duties, iC_Salary, iMAC) VALUES(@sidw, @iECName, @iECYear, @iECTitle, @iECDuties, @iESalary, @iMAC)", connection);
                        cmd.Connection = connection;
                        cmd.Parameters.AddWithValue("@sidw", iSID1);
                        cmd.Parameters.AddWithValue("@iECNAME", iECName.Text);
                        cmd.Parameters.AddWithValue("@iECYear", iECYear.Text);
                        cmd.Parameters.AddWithValue("@iECTitle", iECTitle.Text);
                        cmd.Parameters.AddWithValue("@iECDuties", iECDuties.Value);
                        cmd.Parameters.AddWithValue("@iESalary", iESalary.Text);
                        cmd.Parameters.AddWithValue("@iMAC", iMAC.Value);
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        iECName.Text = String.Empty;
                        iECYear.Text = String.Empty;
                        iECTitle.Text = String.Empty;
                        iESalary.Text = String.Empty;
                        iECDuties.Value = String.Empty;
                        iMAC.Value = String.Empty;
                        successw.Visible = true;
                    }
                }
            }
        }
        protected void submitaddmorecer_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iStudent where iSID= @sid", connection))
            {
                connection.Open();
                sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                DataSet ds = new DataSet();
                adptr.Fill(ds, "iStudent");
                if (ds.Tables["iStudent"].Rows.Count == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Cant add Certification. Please check the Student ID ');", true);
                    iCertification.Text = String.Empty;
                    iBody.Text = String.Empty;
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO iCertification(iSID, iCertification, iBody) VALUES(@sidc, @iCertification, @iBody)", connection);
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("@sidc", iSID1);
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
        protected void submitaddmoreskill_Click(object sender, EventArgs e)
        {
            String iSID1 = Convert.ToString(Session["iSID"]);
            string connectionString = @"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("SELECT * from iStudent where iSID= @sid", connection))
                {
                    connection.Open();
                    sqlCommand.Parameters.AddWithValue("@sid", iSID1);
                    SqlDataAdapter adptr = new SqlDataAdapter(sqlCommand);
                    DataSet ds = new DataSet();
                    adptr.Fill(ds, "iStudent");
                    if (ds.Tables["iStudent"].Rows.Count == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert_r2", "alert('Cant add skill. Please check Student ID ');", true);
                        iSkillG.Value = String.Empty;
                        iSkill.Text = String.Empty;
                        iSkillL.Value = String.Empty;
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO iSkills(iSID, iSkillG, iSkill, iLevel) VALUES(@sids, @iSkillG, @iSkill, @iSkillL)", connection);
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