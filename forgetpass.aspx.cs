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
    public partial class forgetpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cd1.Visible = true;
                cd2.Visible = false;
                cd3.Visible = false;
                reset.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM slog WHERE sid = @Email"))
                {
                    cmd.Parameters.AddWithValue("@Email", cd1.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["sid"].ToString();
                            password = sdr["pwd"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                cd1.Visible = false;
                cd2.Visible = true;
                cd3.Visible = true;
                reset.Visible = true;
                Button1.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Student Record Found');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Student Record Not Found');", true);
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            string user = cd1.Text.Trim();
            string pass = cd3.Text.Trim();
            int rowsAffected = 0;
            string query = "UPDATE slog SET pwd = @NewPassword WHERE sid = @Username";
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@Username", user);
                        cmd.Parameters.AddWithValue("@NewPassword", pass);
                        cmd.Connection = con;
                        con.Open();
                        rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                if (rowsAffected > 0)
                {
                    cd1.Visible = true;
                    cd2.Visible = false;
                    cd3.Visible = false;
                    reset.Visible = false;
                    Button1.Visible = true;
                    cd1.Text = "";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Password Reset Successfully');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Password Reset Unsuccessfull');", true);
                }
            }
        }
    }
}