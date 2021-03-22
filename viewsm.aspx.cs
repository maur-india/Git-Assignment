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
    public partial class viewsm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dc1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
                        string sql = "SELECT * FROM sm";
                        if (!string.IsNullOrEmpty(TBox1.Text.Trim()))
                        {
                            sql += " WHERE cl LIKE @ContactName + '%' OR topic LIKE @ContactName + '%'";
                            cmd1.Parameters.AddWithValue("@ContactName", TBox1.Text.Trim());
                        }
                        cmd1.CommandText = sql;
                        cmd1.Connection = con1;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                        {
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                GridView1.DataSource = dt;
                                GridView1.DataBind();
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
                int imgId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
                SqlCommand cmd = new SqlCommand("delete from sm where Id=@Image_Id", con);
                cmd.Parameters.AddWithValue("@Image_Id", imgId);
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();

                //Get the application physical path of the application
                physicalPath = HttpContext.Current.Request.MapPath(Request.ApplicationPath);
                //Get the Image path from the DataKeyNames
                imgPath = GridView1.DataKeys[e.RowIndex].Values["f1"].ToString();
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

        protected void imgDownload_Click(object sender, EventArgs e)
        {
            try
            {
                ImageButton imgBtn = sender as ImageButton;
                GridViewRow gvrow = imgBtn.NamingContainer as GridViewRow;
                //Get the Image path from the DataKeyNames          
                string ImgPath = GridView1.DataKeys[gvrow.RowIndex].Values["f1"].ToString();
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
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }
        protected void Search(object sender, EventArgs e)
        {
            this.BindGrid();
        }
    }
}