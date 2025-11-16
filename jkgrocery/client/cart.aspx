<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="jkgrocery.client.cart" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd= new SqlCommand("select * from tbl_cart join tbl_product on tbl_cart.c_proid=tbl_product.pro_id where c_userid='"+Session["userdata"]+"'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
    %>
    <center>
    <table align="center" id="carttable" border="2" style="margin-top:30px; width:1200px; font-size:25px; text-align:center; margin-bottom:30px;">
        <tr>           
            <th> Product name </th>
             <th>Product Image</th>
            <th> Price </th>
            <th> Quantity </th>
            <th> Total </th>
            <th> Remove </th>
        </tr>

    <% int total = 0;
        while (dr.Read()) {
            string price = dr["pro_price"].ToString();
            int prc = int.Parse(price);
            string cqty = dr["c_qty"].ToString();
            int qty = int.Parse(cqty);
            int sub = prc * qty;
            total = total + sub; %>

        <tr>            
            <td style="color:#33cc33;"> <% Response.Write(dr["pro_name"]); %> </td>
            <td><img src="images/<%Response.Write(dr["pro_img"].ToString()); %>" style="height:100px; width:100px;"/></td>
            <td> &#8377; <% Response.Write(dr["pro_price"]); %> </td>
            <td> <% Response.Write(dr["c_qty"]); %> </td>
            <td> &#8377; <% Response.Write(sub); %> </td>
            <td>
                <a href="cart_remove.aspx?cartid= <% Response.Write(dr["c_id"]); %>"> Remove </a>
            </td>
        </tr>

        <% } %>

        <tr>
            <td colspan="3"> Total </td>
            <td colspan="3" style="color:#33cc33;"> &#8377; <% Response.Write(total); %> </td>
        </tr>  
        <tr>
            <td colspan="3">
                <a href="proceed_to_checkout.aspx">
                    Proceed to checkout
                </a>
            </td>
            <td colspan="3">
                <a href="product.aspx"> Continue shopping...
                </a>
            </td>
        </tr>                     
    </table>
</center>
</asp:Content>
