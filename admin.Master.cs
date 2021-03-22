using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ppsclasses
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"]!=null)
            {

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}