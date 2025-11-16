using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jkgrocery.admin
{
    public partial class admin_login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        }

        protected void btnsignin_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from tbl_adminlogin where ad_name='" + txtname.Text + "' and ad_password='" + txtpass.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["admindata"] = dr;
                Response.Write("alert('Login success')");
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                Response.Write("<script>('Invalid Username or password')</script>");
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_category.aspx");
        }
    }
}