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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                //user
                if (Request.Cookies["sid"] != null)

                    T1.Text = Request.Cookies["sid"].Value;
                if (Request.Cookies["pwd"] != null)
                    T2.Attributes.Add("value", Request.Cookies["pwd"].Value);
                if (Request.Cookies["sid"] != null && Request.Cookies["pwd"] != null)
                    CheckBox1.Checked = true;
               
                //admin
                if (Request.Cookies["aid"] != null)

                    TextBox1.Text = Request.Cookies["aid"].Value;

                if (Request.Cookies["pwd1"] != null)

                    TextBox2.Attributes.Add("value", Request.Cookies["pwd1"].Value);
                if (Request.Cookies["aid"] != null && Request.Cookies["pwd1"] != null)
                    CheckBox2.Checked = true;
            }
        }

        protected void user_Click(object sender, EventArgs e)
        {
            string username = T1.Text.Trim();
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select sid,pwd from slog where sid='" + T1.Text.Trim() + "' and pwd='" + T2.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count>0)
            {
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["sid"].Value = T1.Text;
                    Response.Cookies["pwd"].Value = T2.Text;
                    Response.Cookies["sid"].Expires = DateTime.Now.AddDays(5);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(2); 
                }
                else
                {
                    Response.Cookies["sid"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["User"] = T1.Text.Trim();
                Response.Redirect("uhome.aspx");
            }
            else
            {
                div1.Visible = true;
                Label2.Text = "Student Code and/or password is incorrect.";
            }
            con.Close();
        }

        protected void ad_Click(object sender, EventArgs e)
        {
            string username1 = TextBox1.Text.Trim();
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
                    Response.Cookies["aid"].Expires = DateTime.Now.AddDays(5);
                    Response.Cookies["pwd1"].Expires = DateTime.Now.AddDays(5);
                }

                else
                {
                    Response.Cookies["aid"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["pwd1"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["Admin"] = TextBox1.Text;
                Response.Redirect("adminhome.aspx");
            }
            else

            {
                div2.Visible = true;
                Label1.Text = "Admin Code and/or password is incorrect.";
            }
            con.Close();
        }
    }
}