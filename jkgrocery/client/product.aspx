<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="jkgrocery.client.product" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <table id="brands" border="2" style="float:left; font-size:18px; margin-top:20px; margin-bottom:20px;">
        <tr style="height:40px;">
            <td align="center";><h2> Category </h2></td>
        </tr>
        <tr style="height:40px; text-align:center;">
            <td><a href="product.aspx" class="link"> All </a><hr /></td>
        </tr>

        <%
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("select * from tbl_category", con);
            con.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read()){
        %>

        <tr style="height:200px; text-align:center;">
            <td>
                <a href="product.aspx?cat_id=<%Response.Write( dr1["cat_id"]);%>" class="link">
                   
                     <img src="images/<%Response.Write(dr1["cat_img"].ToString()); %>" class="prodimg" style=" width: auto;height: 125px;display: block;margin: auto;"/><br>
                     <%Response.Write(dr1["cat_name"]);%>
                </a>
            </td>
        </tr>

        <% } dr1.Close(); %>

        </table>

    <%
        if (Request.QueryString["cat_id"] != null)
        {             
            SqlCommand cmd = new SqlCommand("select * from tbl_product where pro_catid='" + Request.QueryString["cat_id"] + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
    %>
    <center>

    <table class="prodtab" border="2" style="margin-bottom:850px; margin-top:25px; width:1000px; height:400px;">
        <caption class="tabcaption"> <h1 style="margin-bottom:30px;">Our Products </h1></caption>
        

        <% int i = 0; %>
        <% while (dr.Read()){
            if(i%4==0){ %>
        <tr>
            <% } %>
            <td style="height:275px; width:275px; margin-top:10px; margin-bottom:10px;">
                <a href="product_detail.aspx?id=<%Response.Write(dr["pro_id"].ToString()); %> &stock=<%Response.Write(dr["pro_stock"].ToString()); %>" class="link">
                    <img src="images/<%Response.Write(dr["pro_img"].ToString()); %>" class="prodimg" style=" width: 250px; height:150px;display: block;"/>
                    <br />
                    <center><%Response.Write(dr["pro_name"].ToString()); %></center>
                </a>
            </td>
            <% i++;
            if(i%4==0){ %>
        </tr>
            <%}
        } dr.Close();
        con.Close(); %>
    </table>
    <% } else {
            SqlCommand cmd = new SqlCommand("select * from tbl_product", con);
            SqlDataReader dr = cmd.ExecuteReader();
    %>

        </center>
    <center>
    <table class="prodtab" border="2" style="margin-bottom:850px; margin-top:25px; width:1000px; height:400px;">
        <caption class="tabcaption"> <h1 style="margin-bottom:30px; font-size:45px;">Our Products</h1> </caption>

        <% int i = 0; %>
        <%while (dr.Read()){  
            if(i%4==0){ %>
        <tr>
            <% } %>
            <td style="height:275px; width:275px; margin-top:10px; margin-bottom:10px;">
                <a href="product_detail.aspx?id=<%Response.Write(dr["pro_id"].ToString()); %> &stock=<%Response.Write(dr["pro_stock"].ToString()); %>" class="link">
                    <img src="images/<%Response.Write(dr["pro_img"].ToString()); %>" class="prodimg" style="width:250px; height:150px; display: block;"/>
                    <br />
                    <center><%Response.Write(dr["pro_name"].ToString()); %></center>
                </a>
            </td>
            <% i++;
            if(i%4==0){ %>
        </tr>
            <% }
        } dr.Close();
        con.Close();%>
    
    <% } %>
</table>
        </center>
</asp:Content>



