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
    public partial class usernotice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dc1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.bindgrid1();
            }
        }
        protected void bindgrid1()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        string sql1 = "SELECT * FROM notice";
                        if(!string.IsNullOrEmpty(usernoticetext.Text.Trim()))
                        {
                            sql1+= " WHERE class LIKE @noticesearch + '%' OR topic LIKE @noticesearch + '%'";
                            cmd.Parameters.AddWithValue("@noticesearch", usernoticetext.Text.Trim());
                        }
                        cmd.CommandText = sql1;
                        cmd.Connection = con;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                usernoticegv.DataSource=dt;
                                usernoticegv.DataBind();
                            }
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }

        }

        protected void usernoticetext_TextChanged(object sender, EventArgs e)
        {
            this.bindgrid1();
        }

        protected void usernotice_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            usernoticegv.PageIndex = e.NewPageIndex;
            bindgrid1();
        }

        protected void usernoticedownload_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                ImageButton downbtn = sender as ImageButton;
                GridViewRow gvdown = downbtn.NamingContainer as GridViewRow;
                string imagedown = usernoticegv.DataKeys[gvdown.RowIndex].Values["f2"].ToString();
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + imagedown + "\"");
                Response.TransmitFile(Server.MapPath(imagedown));
                Response.End();
            }
            catch (Exception Ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + Ex.Message.ToString() + "');", true);
            }
        }
    }
}