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
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void reportAll_Click(object sender, EventArgs e)
        {
            String state = showallstu.Value;

            if(state=="1")
            {
                Response.Redirect("ShowAllComp.aspx");
            }
            else if(state=="2")
            {
                Response.Redirect("ShowAllPos.aspx");
            }
            else if(state=="3")
            {
                Response.Redirect("ShowAllStu.aspx");
            }
            else if(state=="4")
            {
                Response.Redirect("ShowAllStart.aspx");
            }
            else
            {
                Response.Redirect("Match.aspx");
            }
        }
        protected void reportSpecific_Click(object sender, EventArgs e)
        {

            String tables = tables1.Value;
            String country = country1.Value;
            String job = job1.Value;

            if(tables=="1" && country != "" && job != "")
            {
                string url;
                url = "sfiltercjg.aspx?country=" +
                    country1.Value + "&" + "job=" +
                    job1.Value;
                Response.Redirect(url);
            }
            else if (tables == "1" && country != "" && job == "")
            {
                string url;
                url = "sfiltercj.aspx?country=" +
                    country1.Value;
                Response.Redirect(url);
            }
            else if (tables == "1" && country == "" && job != "")
            {
                string url;
                url = "sfilterj.aspx?job=" +
                    job1.Value;
                Response.Redirect(url);
            }
            else if (tables == "1" && country == "" && job == "")
            {
                Response.Redirect("ShowAllStu.aspx");
            }
            else if (tables == "2" && country != "")
            {
                string url;
                url = "cfilterc.aspx?country=" +
                    country1.Value;
                Response.Redirect(url);
            }
            else
            {
                Response.Redirect("ShowAllComp.aspx");
            }
        }
    }
}