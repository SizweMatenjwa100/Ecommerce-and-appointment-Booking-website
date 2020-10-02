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
    public partial class ViewAppointments : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        int Customer_ID;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Customer_ID"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    updateRepeater1();
                }
            }
        }

        private void updateRepeater1()
        {
            Customer_ID = Convert.ToInt32(Session["Customer_ID"].ToString());

            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("sp_veiwReservations", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.AddWithValue("@UserId", Customer_ID);

            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count <= 0)
            {
                lblHeader.Text = "You do not have any upcomming reservations at the moment";
            }

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "delete":

                    Customer_ID = Convert.ToInt32(Session["Customer_ID"].ToString());

                    DateTime dtDate = DateTime.ParseExact(((Label)e.Item.FindControl("lblDate")).Text, "dd/MM/yyyy", null);
                    string dtDateString = dtDate.ToString("yyyy-MM-dd");

                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("sp_deleteReservation", con);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@EmpName", ((Label)e.Item.FindControl("lblEmpName")).Text);
                        cmd.Parameters.AddWithValue("@userId", Customer_ID);
                        cmd.Parameters.AddWithValue("@reservationDate", dtDateString);
                        cmd.Parameters.AddWithValue("@timeIn", ((Label)e.Item.FindControl("lblTimeIn")).Text);
                        cmd.Parameters.AddWithValue("@timeOut", ((Label)e.Item.FindControl("lblTimeOut")).Text);

                        con.Open();

                        cmd.ExecuteNonQuery();

                        updateRepeater1();

                    }

                    break;
            }
        }
    }
}