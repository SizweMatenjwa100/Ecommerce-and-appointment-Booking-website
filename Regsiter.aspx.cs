﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonWebApp2
{
    public partial class Regsiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
               
            SqlDataSource1.Insert();
            Response.Redirect("Home.aspx");
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}