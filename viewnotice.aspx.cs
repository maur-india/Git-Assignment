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
    public partial class viewnotice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dc1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
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
                        string sql = "SELECT * FROM notice";
                        if (!string.IsNullOrEmpty(TBox10.Text.Trim()))
                        {
                            sql += " WHERE class LIKE @ContactName + '%' OR topic LIKE @ContactName + '%'";
                            cmd1.Parameters.AddWithValue("@ContactName", TBox10.Text.Trim());
                        }
                        cmd1.CommandText = sql;
                        cmd1.Connection = con1;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                        {
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                GridView2.DataSource = dt;
                                GridView2.DataBind();
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

        protected void grdImages_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string physicalPath = string.Empty;
            string imgPath = string.Empty;
            string finalPath = string.Empty;
            try
            {
                //Get the Image_Id from the DataKeyNames
                int imgId = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
                SqlCommand cmd = new SqlCommand("delete from notice where Id=@Image_Id", con);
                cmd.Parameters.AddWithValue("@Image_Id", imgId);
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();

                //Get the application physical path of the application
                physicalPath = HttpContext.Current.Request.MapPath(Request.ApplicationPath);
                //Get the Image path from the DataKeyNames
                imgPath = GridView2.DataKeys[e.RowIndex].Values["f2"].ToString();
                //Create the complete path of the image
                finalPath = physicalPath + "\\" + imgPath;

                FileInfo file = new FileInfo(finalPath);
                if (file.Exists)//checking file exsits or not
                {
                    file.Delete();//Delete the file
                }
                BindGrid();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
            finally
            {
                con.Close();
                physicalPath = string.Empty;
                imgPath = string.Empty;
                finalPath = string.Empty;
            }
        }

        protected void imgDownload1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                ImageButton imgBtn = sender as ImageButton;
                GridViewRow gvrow = imgBtn.NamingContainer as GridViewRow;
                //Get the Image path from the DataKeyNames          
                string ImgPath = GridView2.DataKeys[gvrow.RowIndex].Values["f2"].ToString();
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
            GridView2.PageIndex = e.NewPageIndex;
            BindGrid();
        }
        protected void Search1(object sender, EventArgs e)
        {
            this.BindGrid();
        }
    }
}