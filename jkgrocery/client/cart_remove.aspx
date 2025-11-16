<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="cart_remove.aspx.cs" Inherits="jkgrocery.client.cart_remove" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd= new SqlCommand("delete from tbl_cart  where c_id='"+Request.QueryString["cartid"]+"'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Response.Redirect("cart.aspx");
    %>
</asp:Content>
