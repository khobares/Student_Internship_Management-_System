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
    public partial class JobPortal : System.Web.UI.Page
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
            //String iSID = "1001";
            String iSID = Convert.ToString(Session["iSID"]);
            using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM iJob", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        jobPortal.DataSource = dt;
                        jobPortal.DataBind();
                    }
                }
                using (SqlCommand cmd = new SqlCommand("SELECT  J.iC_Name, iPosition, iSalary, iRequirements, iDescription, iResponsibility FROM iStudent S JOIN iInterest I ON S.iSID=I.iSID JOIN iJob J ON I.iS_Interest=J.iPosition WHERE S.iSID=@iSID;", con))
                {
                    cmd.Parameters.AddWithValue("@iSID", iSID);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        jobmatch.DataSource = dt;
                        jobmatch.DataBind();
                    }
                }
            }
        }
    }
}