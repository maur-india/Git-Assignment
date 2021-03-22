using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ppsclasses
{
    public partial class uhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
                string code = Session["User"].ToString().Trim();
                Labelcode.Text = code;
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from slog where sid ='" + Session["User"].ToString().Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Labelfname.Text = dr["fname"].ToString();
                }
                con.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("login.aspx");
        }
    }
}