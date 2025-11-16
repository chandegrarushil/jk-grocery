using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace jkgrocery
{
    public partial class feedback : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((txtname.Text == "") || (txtemail.Text == "") || (txtmsg.Text == ""))
            {
                Response.Write("<script>alert('Fields can not be blank.')</script>");
            }
            else
            {
                cmd = new SqlCommand();
                cmd.CommandText = "insert into tbl_feedback values(" + "'" + txtname.Text + "'" + "," + "'" + txtemail.Text + "'" + "," + "'" + txtmsg.Text + "')";
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thanks for Feedback.')</script>");
            }
        }
    }
}