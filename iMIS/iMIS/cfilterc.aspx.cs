﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iMIS
{
    public partial class cfilterc : System.Web.UI.Page
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
            String country1 = Request.QueryString["country"];
            using (SqlConnection con = new SqlConnection(@"Data Source=SIDD;Initial Catalog=iMIS;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("select iC_Name, iC_Type, iC_Address, iC_City, iC_Country, iC_Post, iC_FName, iC_LName, iC_Phone from iCompany WHERE iC_Country=@country", con))
                {
                    cmd.Parameters.AddWithValue("@country", country1);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        cFilterc.DataSource = dt;
                        cFilterc.DataBind();
                    }
                }
            }
        }
    }
}