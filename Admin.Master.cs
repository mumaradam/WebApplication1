using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lnkbtnLogout3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //getNoti();
            UpdatePanel1.Update();

        }
    }
}