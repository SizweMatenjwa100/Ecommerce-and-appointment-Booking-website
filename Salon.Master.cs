using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace SalonWebApp2
{
    public partial class Salon : System.Web.UI.MasterPage
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        int Customer_ID; int Employee_ID;

        double totalPrice = 0;
        double totalPriceRow = 0;
        double Price;
        int quantity;
        int NoOfItems = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Customer_ID"] != null)
            {
                SqlConnection con = new SqlConnection(CS);
                SqlDataAdapter da = new SqlDataAdapter("Select * from tblCustomer2 where Customer_ID = " + Convert.ToInt32(Session["Customer_ID"].ToString()), con);
                DataTable dt = new DataTable();

                da.Fill(dt);
                DataRow dr = dt.Rows[0];


                hplAP.Visible = false;
                lbtnLogout.Visible = true;
                lbtnLogout.Text = "Logout";
                hlLogin.Visible = false;
                hlRegister.Visible = false;

                lblWelcome.Visible = true;
                lblWelcome.Text = "Logged in as " + dr["Customer_UserName"];

                //***************************show cart********************
                lblNoOfItems.Visible = true;
                lblTotalPrice.Visible = true;
                imgCart.Visible = true;
                lblTotalPriceLabel.Visible = true;
                hplViewOrder.Visible = true;
                //***************************show cart********************

                calculateUserOrder();

            }

            else if (Session["Employee_ID"] != null)
            {

                Employee_ID = Convert.ToInt32(Session["Employee_ID"].ToString());

                SqlConnection con = new SqlConnection(CS);
                SqlDataAdapter da2 = new SqlDataAdapter("Select * from tblEmployee2 where Employee_ID = " + Employee_ID, con);
                DataTable dt2 = new DataTable();

                da2.Fill(dt2);
                DataRow dr2 = dt2.Rows[0];

                lbtnLogout.Visible = true;
                lbtnLogout.Text = "Logout";
                hlLogin.Visible = false;
                hlRegister.Visible = false;

                lblWelcome.Visible = true;
                lblWelcome.Text = "Logged in as " + dr2["Employee_UserName"];

                //***************************hide cart********************
                lblNoOfItems.Visible = false;
                lblTotalPrice.Visible = false;
                imgCart.Visible = false;
                lblTotalPriceLabel.Visible = false;
                hplViewOrder.Visible = false;
                //***************************hide cart********************
            }

            else
            {
                hlLogin.Visible = true;
                hlLogin.Text = "Login";
                lbtnLogout.Visible = false;
                hlRegister.Visible = true;
                hlRegister.Text = "Register";
                hplAP.Visible = false;
                lblTotalPriceLabel.Visible = false;

                lblWelcome.Visible = false;
            }
        }

        private void calculateUserOrder()
        {
            Customer_ID = Convert.ToInt32(Session["Customer_ID"].ToString());

            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("ProductIDsAndQuantities", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.AddWithValue("@UserId", Customer_ID);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                lblNoOfItems.Text = "0";
                lblTotalPrice.Text = "0";
            }
            else
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Price = Convert.ToInt32(dr["Product_Price"].ToString());
                    quantity = Convert.ToInt32(dr["quantity"].ToString());

                    totalPriceRow = Price * quantity;
                    totalPrice = totalPrice + totalPriceRow;
                    NoOfItems = NoOfItems + quantity;

                    Price = 0;
                    quantity = 0;
                }
                lblTotalPrice.Text = totalPrice.ToString();
                lblNoOfItems.Text = NoOfItems.ToString();
            }
        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("UserId");
            Session.Remove("Customer_ID");
            Session.Clear();
            //Session.Abdomen();
            lbtnLogout.Visible = false;
            lblWelcome.Visible = false;
            hlRegister.Visible = true;
            hlRegister.Text = "Register";
            hlLogin.Visible = true;
            hlLogin.Text = "Login";

            lblTotalPrice.Text = "0";
            lblNoOfItems.Text = "0";
        }

        protected void ViewMyOrder_Click(object sender, EventArgs e)
        {
            //Response.Redirect("ViewMyOrder.aspx");
        }
    }
}