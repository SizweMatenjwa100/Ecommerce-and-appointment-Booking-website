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
    public partial class TestForm : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("select * from tblProduct2 where Product_Category = 'weave'", con);

            DataTable dt = new DataTable();
            da.Fill(dt);

            RptProducts.DataSource = dt;
            RptProducts.DataBind();


            SqlDataAdapter da2 = new SqlDataAdapter("select * from tblProduct2 where Product_Category = 'Remy'", con);

            DataTable dt2 = new DataTable();
            da2.Fill(dt2);

            RptProducts2.DataSource = dt2;
            RptProducts2.DataBind();

        }
    }
}