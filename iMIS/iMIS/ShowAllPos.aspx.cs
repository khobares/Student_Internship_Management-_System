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
    public partial class ShowAllPos : System.Web.UI.Page
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
            using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("select iJob.iC_Name, iJobGroup, iPosition, iDescription, iRequirements, iSalary, iCompany.iC_Country from iJob JOIN iCompany ON iJob.iC_Name=iCompany.iC_Name", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        showAllPos.DataSource = dt;
                        showAllPos.DataBind();
                    }
                }
            }
        }
    }
}