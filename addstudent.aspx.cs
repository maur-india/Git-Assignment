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
    public partial class addstudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            L1.Text = DateTime.Now.ToString("dddd , MMM dd yyyy");
            this.BindGrid();
        }
        protected void b1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;

            SqlConnection con = new SqlConnection(constr);
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into slog ( fname, mobile, sid, pwd, cl2, cl, date) values (@faname, @mobile, @sid, @pswd, @answ, @class, @Date)", con);
                cmd.Parameters.AddWithValue("@faname", TB2.Text);
                cmd.Parameters.AddWithValue("@mobile", TB3.Text);
                cmd.Parameters.AddWithValue("@sid", TB1.Text);
                cmd.Parameters.AddWithValue("@pswd", TB5.Text);
                cmd.Parameters.AddWithValue("@answ", TB7.Text);
                cmd.Parameters.AddWithValue("@class", TB8.Text);
                cmd.Parameters.AddWithValue("@Date", L1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            TB1.Text = "";
            TB2.Text = "";
            TB3.Text = "";
            TB5.Text = "";
            TB6.Text = "";
            TB7.Text = "";
            TB8.Text = "";
            Response.Redirect(Request.RawUrl);
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            using (SqlConnection con1 = new SqlConnection(constr))
            {
                using (SqlCommand cmd1 = new SqlCommand())
                {
                    string sql = "SELECT * FROM slog";
                    if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                    {
                        sql += " WHERE fname LIKE @ContactName + '%' OR sid LIKE @ContactName + '%'";
                        cmd1.Parameters.AddWithValue("@ContactName", txtSearch.Text.Trim());
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
        protected void Search(object sender, EventArgs e)
        {
            this.BindGrid();
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void OnRowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;

            string SID = GridView1.DataKeys[e.RowIndex].Value.ToString();

            Label SID1 = (Label)GridView1.Rows[e.RowIndex].FindControl("lblName");

            TextBox txtc = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtclass");

            TextBox txtn = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtname");

            SqlConnection conn = new SqlConnection(constr);

            SqlCommand cmd = new SqlCommand("Update slog set cl='" + txtc.Text + "',fname='" + txtn.Text + "' where sid='" + SID1 + "'", conn);

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();

            GridView1.EditIndex = -1;

            this.BindGrid();
        }
        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dc1"].ConnectionString;
            SqlConnection con2 = new SqlConnection(constr);
            Label lblEmpID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblName");
            con2.Open();
            string cmdstr = "delete from slog where sid=@Sid";
            SqlCommand cmd = new SqlCommand(cmdstr, con2);
            cmd.Parameters.AddWithValue("@Sid", lblEmpID.Text);
            cmd.ExecuteNonQuery();
            con2.Close();

            this.BindGrid();
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[6].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

    }
}