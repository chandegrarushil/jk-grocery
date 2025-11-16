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
    public partial class add_product : System.Web.UI.Page
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
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs("D:\\jkgrocery\\jkgrocery\\admin\\images" + FileUpload1.FileName);
            }
            cmd.CommandText = "INSERT INTO tbl_product (pro_catid,pro_name,pro_price,pro_img,pro_desc,pro_stock) VALUES (" + DropDownList1.SelectedValue + "," + "'" + txtpname.Text + "'" + "," + txtprice.Text + "," + "'" + FileUpload1.FileName + "'" + "," + "'" + txtdes.Text + "'" + "," + txtstock.Text + ")";
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Product Add Successfull')</script>");
            Response.Redirect("manage_product.aspx");
        }
    }
}