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
    public partial class ShowAllStart : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("select iC_Name, iC_Type, iC_Address, iC_City, iC_Country, iC_Post, iC_FName, iC_LName, iC_Phone from iCompany WHERE iC_Type LIKE 'Startup Company'", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        showAllStrt.DataSource = dt;
                        showAllStrt.DataBind();
                    }
                }
            }
        }
    }
}