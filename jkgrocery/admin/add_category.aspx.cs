using Antlr.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using System.Data;
using System.Data.SqlClient;

namespace jkgrocery.admin
{
    public partial class add_category : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO tbl_category(cat_name,cat_img) VALUES (" + "'" + txtname.Text + "'" + "," + "'" + FileUpload1.FileName + "'" + ")";
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>('Category Add Successfull')</script>");
            Response.Redirect("manage_category.aspx");
        }
    }
}