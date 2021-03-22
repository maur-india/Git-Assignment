using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ppsclasses
{
    public partial class addresult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void result_Click(object sender, EventArgs e)
        {
                string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;

                SqlConnection con = new SqlConnection(constr);
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into result ( Sid, class, ename, marks) values (@SID, @CLASS, @ExamName, @Marks)", con);
                    cmd.Parameters.AddWithValue("@SID", Box1.Text);
                    cmd.Parameters.AddWithValue("@CLASS", Box2.Text);
                    cmd.Parameters.AddWithValue("@ExamName", Box3.Text);
                    cmd.Parameters.AddWithValue("@Marks", Box4.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
            }
            Labelresult.Text = "Successfully Uploaded";
            Box1.Text = "";
            Box2.Text = "";
            Box3.Text = "";
            Box4.Text = "";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Successfully Uploaded');", true);
        }

        protected void view_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewresult.aspx");
        }
    }
}