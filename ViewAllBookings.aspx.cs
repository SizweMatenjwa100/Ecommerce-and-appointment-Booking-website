using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonWebApp2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToString("yyyy/mm/dd");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }
    }
}