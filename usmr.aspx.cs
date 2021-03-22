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
    public partial class usmr : System.Web.UI.Page
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
                    Labelclass.Text = dr["cl"].ToString();
                    Labelcourse.Text = dr["cl2"].ToString();
                    labelsid.Text = dr["sid"].ToString();
                }
                con.Close();
                this.BindGrid();
                this.BindGrid1();
            }
            else
            {
                classenter1.Visible = false;
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
                        string sql = "SELECT * FROM sm WHERE cl IN ('"+ Labelclass.Text + "' , '" + Labelcourse.Text+"')";
                        cmd1.CommandText = sql;
                        cmd1.Connection = con1;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                        {
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                smr.DataSource = dt;
                                smr.DataBind();
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
        protected void BindGrid1()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
                using (SqlConnection con1 = new SqlConnection(constr))
                {
                    using (SqlCommand cmd1 = new SqlCommand())
                    {
                        string sql = "SELECT * FROM result WHERE Sid IN ('" + labelsid.Text + "')";
                        cmd1.CommandText = sql;
                        cmd1.Connection = con1;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                        {
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                result.DataSource = dt;
                                result.DataBind();
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

        protected void imgDownload2_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                ImageButton imgBtn = sender as ImageButton;
                GridViewRow gvrow = imgBtn.NamingContainer as GridViewRow;
                //Get the Image path from the DataKeyNames          
                string ImgPath = smr.DataKeys[gvrow.RowIndex].Values["f1"].ToString();
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
            smr.PageIndex = e.NewPageIndex;
            BindGrid();
        }
        protected void grdImages1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            smr.PageIndex = e.NewPageIndex;
            BindGrid1();
        }
        protected void Searchcl(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            using (SqlConnection con1 = new SqlConnection(constr))
            {
                using (SqlCommand cmd1 = new SqlCommand())
                {
                    string sql = "SELECT * FROM sm WHERE cl LIKE @Class + '%'";
                    cmd1.Parameters.AddWithValue("@Class", Labelclass.Text.Trim());
                    if (!string.IsNullOrEmpty(classenter1.Text.Trim()))
                    {
                        sql += " AND topic LIKE @ContactName + '%'";
                        cmd1.Parameters.AddWithValue("@ContactName", classenter1.Text.Trim());
                    }
                    cmd1.CommandText = sql;
                    cmd1.Connection = con1;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            smr.DataSource = dt;
                            smr.DataBind();
                        }
                    }
                }
            }
        }
        protected void Searchresult(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            using (SqlConnection con1 = new SqlConnection(constr))
            {
                using (SqlCommand cmd1 = new SqlCommand())
                {
                    string sql = "SELECT * FROM result WHERE Sid LIKE @Class + '%'";
                    cmd1.Parameters.AddWithValue("@Class", labelsid.Text.Trim());
                    if (!string.IsNullOrEmpty(tbresult.Text.Trim()))
                    {
                        sql += " AND ename LIKE @ContactName + '%'";
                        cmd1.Parameters.AddWithValue("@ContactName", tbresult.Text.Trim());
                    }
                    cmd1.CommandText = sql;
                    cmd1.Connection = con1;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            result.DataSource = dt;
                            result.DataBind();
                        }
                    }
                }
            }
        }
    }
}