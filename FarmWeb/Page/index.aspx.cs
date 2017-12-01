using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NLog;


namespace FarmWeb.Page
{
    public partial class index : System.Web.UI.Page
    {
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void shopping_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("shopping.aspx");
        }
    }

}