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
    public partial class sfilterj : System.Web.UI.Page
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
            String job1 = Request.QueryString["job"];
            if (job1 == "1")
            {
                using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT B.iSID, B.iS_FName, B.iS_LName, B.iS_Country, A.iMAC, A.iC_Name, B.iS_Term, B.iS_Year FROM iExperience A JOIN iStudent B ON A.iSID = B.iSID JOIN iGrad C ON B.iSID = C.iSID WHERE A.iMAC = 'Yes'; ", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sFilterj.DataSource = dt;
                            sFilterj.DataBind();
                        }
                    }
                }
            }
            else if (job1 == "2")
            {
                using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT B.iSID, B.iS_FName, B.iS_LName, B.iS_Country, A.iMAC, A.iC_Name, B.iS_Term, B.iS_Year FROM iExperience A JOIN iStudent B ON A.iSID = B.iSID JOIN iGrad C ON B.iSID = C.iSID WHERE A.iMAC = 'Yes' AND A.iC_Salary>0 ; ", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sFilterj.DataSource = dt;
                            sFilterj.DataBind();
                        }
                    }
                }
            }
            else if (job1 == "3")
            {
                using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT B.iSID, B.iS_FName, B.iS_LName, B.iS_Country, A.iMAC, A.iC_Name, B.iS_Term, B.iS_Year FROM iExperience A JOIN iStudent B ON A.iSID = B.iSID JOIN iGrad C ON B.iSID = C.iSID WHERE A.iMAC = 'Yes' AND A.iC_Salary = 0 ; ", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sFilterj.DataSource = dt;
                            sFilterj.DataBind();
                        }
                    }
                }
            }
            else
            {
                using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT B.iSID, B.iS_FName, B.iS_LName, B.iS_Country, A.iMAC, A.iC_Name, B.iS_Term, B.iS_Year FROM iExperience A JOIN iStudent B ON A.iSID = B.iSID JOIN iGrad C ON B.iSID = C.iSID WHERE A.iMAC = 'No'; ", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            sFilterj.DataSource = dt;
                            sFilterj.DataBind();
                        }
                    }
                }
            }
        }

    }
}