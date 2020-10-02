using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SalonWebApp2
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
                TextBox1.Font.Size = 20;
                TextBox1.Font.Bold = true;

                TextBox2.Font.Size = 20;

                TextBox2.Font.Bold = true;

        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {

            
            SqlConnection con = new SqlConnection(CS);

            SqlDataAdapter da1 = new SqlDataAdapter("select * from tblCustomer2 where Customer_UserName = '" + TextBox1.Text + "' and Customer_Password = '" + TextBox2.Text + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            SqlDataAdapter da2 = new SqlDataAdapter("select * from tblEmployee2 where Employee_UserName = '" + TextBox1.Text + "' and Employee_Password = '" + TextBox2.Text + "'", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);

            if(dt1.Rows.Count > 0)
            {
                DataRow dr1 = dt1.Rows[0];
                Session["Customer_ID"] = Convert.ToInt32(dr1["Customer_ID"].ToString());
                Response.Redirect("Home.aspx");
            }

            else if (dt2.Rows.Count > 0)
            {
                DataRow dr2 = dt2.Rows[0];
                Session["Employee_ID"] = Convert.ToInt32(dr2["Employee_ID"].ToString());
                Response.Redirect("Home.aspx");
            }

            else 
            {
                Label1.Text = "Invalid login";
                lblMsg.Visible = false;
            }
        }
    }
}