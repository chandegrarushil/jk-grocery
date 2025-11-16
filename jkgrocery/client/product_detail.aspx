<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="product_detail.aspx.cs" Inherits="jkgrocery.client.product_detail" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd =new SqlCommand("select * from tbl_product left join tbl_category on tbl_product.pro_catid=tbl_category.cat_id where pro_id='"+Request.QueryString["id"].ToString()+"'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();                
    %>
  
    <div>
    <table style="margin-top:10px; margin-left:100px; font-size:20px;">
        <tr>
            <td>
                <img src="images/<%Response.Write(dr["pro_img"].ToString()); %>" style="margin-left:100px; width: auto;height: 250px;"/>
            </td>
                <td><h1 style="margin-left:250px; color:#007185;"><%Response.Write(dr["pro_name"].ToString()); %></h1><br />
                    <p style="margin-left:200px;">--------------------------------------------------------------</p><br />
                <h4 style="margin-left:225px; background-color:#cc0c39; margin-right:550px; color:#FFFFFF; height:28px; text-align:center; align-self:center;"> Best deal at &#8377; </h4>
                <p style="margin-left:300px; font-size:60px;"> <% Response.Write(dr["pro_price"].ToString()); %> </p>
                    <p style=" margin-left:225px; color:#007185; font-size:15px;">Inclusive of all tax</p>
                      <p style="margin-left:200px;">--------------------------------------------------------------</p><br />

        		<h4 style="margin-left:225px;"> Category </h4>
		        <p style="margin-left:225px;"> <% Response.Write(dr["cat_name"].ToString()); %> </p><br />
        		
        		<h4 style="margin-left:225px;"> Available quantity </h4>
		        <p style="margin-left:225px;"> <%Response.Write(dr["pro_stock"].ToString()); %> </p><br />
        		<h4 style="margin-left:225px;"> Select quantity </h4>
                <p style="margin-left:225px;"><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></p>
                
                    <br />
                    <% if(Session["userdata"]==null) { %>
                        <a href="signin.aspx" style="margin-left:225px;"> Add To Cart </a>
                    <% } else { %>
                        <p style="margin-left:225px;"><asp:Button ID="btnaddtocart" runat="server" Text="Add to Cart" OnClick="btnaddtocart_Click" CssClass="button" BackColor="Gray" ForeColor="White" Height="44px" Width="115px" /></p>
                    <% } %>
                </td>
        </tr>
    </table>
        </div>

    <div>
     <table>
            <td>
                <h2 style="margin-left:125px;"> Product description </h2>
        		<p style="margin-left:125px; font-size:20px;"> <% Response.Write(dr["pro_desc"].ToString()); %> </p><br />
            </td>
    </table>
   </div>

</asp:Content>
