using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iMIS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from iAdmin where iUser=@UserID and iPassword=@Password", con);
            cmd.Parameters.AddWithValue("@UserID", userid.Text);
            cmd.Parameters.AddWithValue("@Password", passwd.Text);
            SqlDataAdapter adptr = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adptr.Fill(ds, "iAdmin");
            if (ds.Tables["iAdmin"].Rows.Count > 0)
            {

                Session["slogin"] = userid.Text;
                Response.Redirect("Home.aspx");
                con.Close();

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert_rl", "alert('Invalid UserID & Passowrd Combination. Please Retry! ');", true);
            }
        }
        protected void student_Click(object sender, EventArgs e)
        {
        }
    }
}