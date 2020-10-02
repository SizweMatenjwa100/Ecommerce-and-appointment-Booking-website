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
    public partial class ViewMyOrder : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        int uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Customer_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            else
            {
                uid = Convert.ToInt32(Session["Customer_ID"].ToString());
                SqlConnection con = new SqlConnection(CS);
                SqlDataAdapter da = new SqlDataAdapter("ProductIDsAndQuantities", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.AddWithValue("@UserId", uid);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    lblMsg.Text = "Your shopping cart is currently empty, please go to menu and select items you wish to purchase";
                    //lblMsg2.Visible = false;
                }
                else
                {
                    lblMsg.Text = "These are the iterms in your cart: ";

                    RptProducts.DataSource = dt;
                    RptProducts.DataBind();
                }
            }
        }
    }
}