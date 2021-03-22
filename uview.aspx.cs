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
    public partial class uview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
                string code = Session["User"].ToString().Trim();

                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from slog where sid ='" + Session["User"].ToString().Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Labelclass1.Text = dr["cl"].ToString();
                    Labelcourse1.Text = dr["cl2"].ToString();
                }
                con.Close();
                this.BindGrid();
            }
            else
            {
                notice.Visible = false;
            }
            
        }
        protected void BindGrid()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
                using (SqlConnection con1 = new SqlConnection(constr))
                {
                    using (SqlCommand cmd1 = new SqlCommand())
                    {
                        string sql = "SELECT* FROM notice WHERE class IN ('"+ Labelclass1.Text + "' , '" + Labelcourse1.Text+"')";
                        cmd1.CommandText = sql;
                        cmd1.Connection = con1;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                        {
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                notice.DataSource = dt;
                                notice.DataBind();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
            finally
            {

            }
        }

        protected void imgDownload1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                ImageButton imgBtn = sender as ImageButton;
                GridViewRow gvrow = imgBtn.NamingContainer as GridViewRow;
                //Get the Image path from the DataKeyNames          
                string ImgPath = notice.DataKeys[gvrow.RowIndex].Values["f2"].ToString();
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + ImgPath + "\"");
                Response.TransmitFile(Server.MapPath(ImgPath));
                Response.End();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
        }
        protected void grdImages_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            notice.PageIndex = e.NewPageIndex;
            BindGrid();
        }
        protected void Searchcl(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            using (SqlConnection con1 = new SqlConnection(constr))
            {
                using (SqlCommand cmd1 = new SqlCommand())
                {
                    string sql = "SELECT * FROM notice";
                    if (!string.IsNullOrEmpty(classenter.Text.Trim()))
                    {
                        sql += " WHERE topic LIKE @ContactName + '%'";
                        cmd1.Parameters.AddWithValue("@ContactName", classenter.Text.Trim());
                    }
                    cmd1.CommandText = sql;
                    cmd1.Connection = con1;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            notice.DataSource = dt;
                            notice.DataBind();
                        }
                    }
                }
            }
            this.BindGrid();
        }

        protected void notice_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                (e.Row.FindControl("lblRowNumber") as Label).Text = (e.Row.RowIndex + 1).ToString();
            }
        }
    }
}