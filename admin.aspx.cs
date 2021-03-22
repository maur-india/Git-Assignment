using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace ppsclasses
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                if (Request.Cookies["aid"] != null)

                    TextBox1.Text = Request.Cookies["aid"].Value;

                if (Request.Cookies["pwd1"] != null)

                    TextBox2.Attributes.Add("value", Request.Cookies["pwd1"].Value);
                if (Request.Cookies["aid"] != null && Request.Cookies["pwd1"] != null)
                    CheckBox2.Checked = true;
            }

            if (this.Page.User.Identity.IsAuthenticated)
            {
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
        }
        protected void admin_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text.Trim();
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select aid,pwd1 from alog where aid='" + TextBox1.Text.Trim() + "' and pwd1='" + TextBox2.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (CheckBox2.Checked == true)
                {
                    Response.Cookies["aid"].Value = TextBox1.Text;
                    Response.Cookies["pwd1"].Value = TextBox2.Text;
                    Response.Cookies["aid"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["pwd1"].Expires = DateTime.Now.AddDays(15);

                    if (!string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                    {
                        FormsAuthentication.SetAuthCookie(username, CheckBox2.Checked);
                        Response.Redirect(Request.QueryString["ReturnUrl"]);
                    }
                    else
                    {
                        FormsAuthentication.RedirectFromLoginPage(username, CheckBox2.Checked);
                    }
                }

                else

                {

                    Response.Cookies["aid"].Expires = DateTime.Now.AddDays(-1);

                    Response.Cookies["pwd1"].Expires = DateTime.Now.AddDays(-1);

                }


                Response.Redirect("adminhome.aspx");
            }
            else

            {
                Div1.Visible = true;
                Label1.Text = "Adminname and/or password is incorrect.";
            }
            con.Close();
        }
    }
}