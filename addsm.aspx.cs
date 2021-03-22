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
   
    public partial class addsm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dc1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Label1.Visible = false;
            
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            string ImgPath = string.Empty;
            string DbImgPath = string.Empty;
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            try
            {
                if (FileUpload1.HasFile)
                {
                    ImgPath = (Server.MapPath("~/assets/") + Guid.NewGuid() + FileUpload1.FileName);
                    FileUpload1.SaveAs(ImgPath);

                    DbImgPath = ImgPath.Substring(ImgPath.LastIndexOf("\\"));
                    DbImgPath = DbImgPath.Insert(0, "assets");

                    SqlCommand cmd = new SqlCommand("Insert into sm (name, ctype, topic, cl, f1, d, m, y) values (@Name, @CType, @Topic, @Class, @Image_Path, @Date, @Month, @Year)", con);
                    cmd.Parameters.AddWithValue("@Name", filename);
                    cmd.Parameters.AddWithValue("@CType", contentType);
                    cmd.Parameters.AddWithValue("@Topic", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Class", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Date", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Month", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Year", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Image_Path", DbImgPath);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    Label1.Text = "Successfully Uploaded";
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
             Label1.Text = "";    
        }    
      }
   }
}