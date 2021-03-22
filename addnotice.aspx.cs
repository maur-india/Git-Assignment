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
    public partial class addnotice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dc1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butt1_Click(object sender, EventArgs e)
        {
            string ImgPath = string.Empty;
            string DbImgPath = string.Empty;
            string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string contentType = FileUpload2.PostedFile.ContentType;
            try
            {
                if (FileUpload2.HasFile)
                {
                    ImgPath = (Server.MapPath("~/assets/") + Guid.NewGuid() + FileUpload2.FileName);
                    FileUpload2.SaveAs(ImgPath);

                    DbImgPath = ImgPath.Substring(ImgPath.LastIndexOf("\\"));
                    DbImgPath = DbImgPath.Insert(0, "assets");

                    SqlCommand cmd = new SqlCommand("Insert into notice (topic, class, f2) values (@Topic, @Class, @Image_Path)", con);
                    cmd.Parameters.AddWithValue("@Topic", TxtBo1.Text);
                    cmd.Parameters.AddWithValue("@Class", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@Image_Path", DbImgPath);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Successfully Uploaded');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Please select the image to upload');", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
            finally
            {
                ImgPath = string.Empty;
                DbImgPath = string.Empty;
                con.Close();
                TxtBo1.Text = "";
            }
        }
    }
}