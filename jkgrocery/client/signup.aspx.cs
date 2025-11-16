using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jkgrocery.client
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO tbl_user (user_name,user_email,user_phone,user_address,user_password) VALUES (" + "'" + txtname.Text + "'" + "," + "'" + txtemail.Text + "'" + "," + "'" + txtphone.Text + "'" + "," + "'" + txtaddress.Text + "'" + "," + "'" + txtpass.Text + "' )";
            
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Write("alert('Signup Successful')");
            Response.Redirect("signin.aspx");
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {

            txtname.Text = "";
            txtemail.Text = "";
            txtphone.Text = "";
            txtaddress.Text = "";
            txtpass.Text = "";
        }
    }
}
