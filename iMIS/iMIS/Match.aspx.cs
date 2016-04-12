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
    public partial class Match : System.Web.UI.Page
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
            {
                using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT S.iSID, iS_FName, iS_LName, iPosition, J.iC_Name, iSalary FROM iStudent S JOIN iInterest I ON S.iSID = I.iSID JOIN iJob J ON I.iS_Interest = J.iPosition;", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            match.DataSource = dt;
                            match.DataBind();
                        }
                    }
                }
            }
        }
    }
}