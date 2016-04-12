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
    public partial class DefaultStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login1_Click(object sender, EventArgs e)
        {
            


            SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True;MultipleActiveResultSets=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from iUser where UName=@UName and Password=@Password", con);
            SqlCommand cmd1 = new SqlCommand("select iSID from iUser where UName=@UName1 and Password=@Password1", con);
            cmd.Parameters.AddWithValue("@UName", userid.Text);
            cmd1.Parameters.AddWithValue("@UName1", userid.Text);
            cmd.Parameters.AddWithValue("@Password", passwd.Text);
            cmd1.Parameters.AddWithValue("@Password1", passwd.Text);
            SqlDataAdapter adptr = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adptr.Fill(ds, "iUser");
            int iSID = Convert.ToInt32(cmd1.ExecuteScalar());
            if (ds.Tables["iUser"].Rows.Count > 0)
            {

                Session["iSID"] = iSID;
                Response.Redirect("StudentHome.aspx");
                con.Close();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert_rl", "alert('Invalid UserID & Passowrd Combination. Please Retry! ');", true);
            }
        }
    }
}