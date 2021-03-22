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
    public partial class admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void A_Click(object sender, EventArgs e)
        {
           
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            
                SqlConnection con = new SqlConnection(constr);
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into student ( fname, lname,  dob, email, mobile, school, tid, gender, course, board, percentage, year) values (@fname, @lname, @dob, @email, @mobile, @school, @tid, @gender, @course, @xb, @xp, @xy)", con);
                    cmd.Parameters.AddWithValue("@fname", TF.Text);
                    cmd.Parameters.AddWithValue("@lname", TL.Text);
                    cmd.Parameters.AddWithValue("@dob", TD.Text);
                    cmd.Parameters.AddWithValue("@email", TE.Text);
                    cmd.Parameters.AddWithValue("@mobile", TM.Text);
                    cmd.Parameters.AddWithValue("@school", TA.Text);
                    cmd.Parameters.AddWithValue("@tid", TP.Text);
                    cmd.Parameters.AddWithValue("@course", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@xb", TB.Text);
                    cmd.Parameters.AddWithValue("@xp", TP2.Text);
                    cmd.Parameters.AddWithValue("@xy", TP3.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            message.Text = "Hello " + TF.Text + " ! ";
            message.Text = message.Text + " <br/> You have successfuly Submitted your application with the following details.";
            ShowUserName.Text = TF.Text;
            ShowLastName.Text = TL.Text;
            ShowEmail.Text = TE.Text;
            ShowMobile.Text = TM.Text;
            ShowUserNameLabel.Text = "Name";
            ShowEmailIDLabel.Text = "Email";
            ShowMobileLabel.Text = "Mobile";
            HyperLink1.Text = "Please click Here for a New Application";
            TF.Text = "";
            TL.Text = "";
            TE.Text = "";
            TM.Text = "";
            TD.Text = "";
            TA.Text = "";
            TP.Text = "";
            TB.Text = "";
            TP2.Text = "";
            TP3.Text = "";
            DropDownList1.SelectedValue = "";
            RadioButtonList1.SelectedValue = "";
            CheckBox2.Checked = false;
            Button1.Enabled = false;
            Button2.Enabled = false;
        }

        protected void R_Click(object sender, EventArgs e)
        {
            TF.Text = "";
            TL.Text = "";
            TE.Text = "";
            TM.Text = "";
            TD.Text = "";
            TA.Text = "";
            TP.Text = "";
            TB.Text = "";
            TP2.Text = "";
            TP3.Text = "";
            DropDownList1.SelectedValue="";
            RadioButtonList1.SelectedValue= "";
            message.Text = "";
            message.Text = "";
            ShowUserName.Text = "";
            ShowLastName.Text = "";
            ShowEmail.Text = "";
            ShowMobile.Text = "";
            ShowUserNameLabel.Text = "";
            ShowEmailIDLabel.Text = "";
            ShowMobileLabel.Text = "";
        }
    }
}