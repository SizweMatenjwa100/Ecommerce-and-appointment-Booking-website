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
    public partial class MenuItem : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        int id; int Customer_ID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("OurProducts.aspx");
            }

            else
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                DataTable dt = getData("select * from tblProduct2 where Product_ID = " + id);

                RptProducts.DataSource = dt;
                RptProducts.DataBind();
            }

        }

        private DataTable getData(string query)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;
        }

        protected void btnViewMyOrder_Click(object sender, EventArgs e)
        {

            if (Session["Customer_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Customer_ID = Convert.ToInt32(Session["Customer_ID"]);
                DataTable dtOrder = getData("select * from tblOrder2 where Customer_ID = " + Customer_ID);

                if (dtOrder.Rows.Count > 0)
                {
                    DataRow drOrder = dtOrder.Rows[0];
                    DataTable dtOrderItem = getData("select * from tblOrderItem2 where OrderId = " + Convert.ToInt32(drOrder["orderId"].ToString()) + " and " + " Product_ID  = " + id);

                    if (dtOrderItem.Rows.Count > 0)
                    {
                        insertData("update tblOrderItem2 set quantity = quantity + 1 where Product_ID = " + id + " and OrderId = " + Convert.ToInt32(drOrder["orderId"].ToString()));

                    }
                    else
                    {
                        addOrderItem(drOrder["OrderId"].ToString(), drOrder["Customer_ID"].ToString());
                    }
                }
                else if (dtOrder.Rows.Count == 0)
                {
                    insertData("insert into tblOrder2 (Customer_ID) values (" + Customer_ID + ")");

                    DataTable newOrder = getData("select * from tblOrder2 where Customer_ID = " + Customer_ID);
                    DataRow newOrderRow = newOrder.Rows[0];

                    addOrderItem(newOrderRow["orderId"].ToString(), newOrderRow["Customer_ID"].ToString());
                }

            }
        }

        private void addOrderItem(string orderId, string userId)
        {
            string query = "insert into tblOrderItem2 (Product_ID, OrderId, quantity) values (" + id + "," + orderId + "," + 1 + ") ";
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }

        }

        private void insertData(string query)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void ViewMyOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMyOrder.aspx");
        }



    }
}