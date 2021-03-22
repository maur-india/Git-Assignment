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
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DD1.Items.Insert(0, new ListItem("Select", ""));
                DD1.Items[0].Selected = true;
                DD1.Items[0].Attributes["disabled"]= "disabled";
                DD2.Items.Insert(0, new ListItem("Select", ""));
                DD2.Items[0].Selected = true;
                DD2.Items[0].Attributes["disabled"] = "disabled";
            }
        }
        protected void paymentbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dc1"].ConnectionString);
            string ImgPath = string.Empty;
            string DbImgPath = string.Empty;
            string filename = Path.GetFileName(payupload.PostedFile.FileName);
            string contentType = payupload.PostedFile.ContentType;
            try
            {
                if (payupload.HasFile)
                {
                    ImgPath = (Server.MapPath("~/assets/") + Guid.NewGuid() + payupload.FileName);
                    payupload.SaveAs(ImgPath);

                    DbImgPath = ImgPath.Substring(ImgPath.LastIndexOf("\\"));
                    DbImgPath = DbImgPath.Insert(0, "assets");

                    SqlCommand cmd = new SqlCommand("Insert into SP (fname, lname, course, month, mode, f3) values (@Fname, @Lname, @Course, @Month, @Mode, @Image_Path)", con);
                    cmd.Parameters.AddWithValue("@Fname", tb1.Text);
                    cmd.Parameters.AddWithValue("@Lname", tb3.Text);
                    cmd.Parameters.AddWithValue("@Course", tb2.Text);
                    cmd.Parameters.AddWithValue("@Month", DD1.SelectedValue);
                    cmd.Parameters.AddWithValue("@Mode", DD2.SelectedValue);
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
                tb1.Text = "";
                tb2.Text = "";
                tb3.Text = "";
            }
        }
    }
}