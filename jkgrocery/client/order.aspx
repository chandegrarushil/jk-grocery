<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="jkgrocery.client.order" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        td, th {
            height:70px;
            text-align:center;           
        }
    </style>

    <%
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd= new SqlCommand("select * from tbl_order where o_userid='"+Session["userdata"]+"'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();              
    %>
    <center>
    <table id="ordtab" align="center" border="2" style="width:800px; margin-top:20px;">
        <tr style="background-color:darkblue; color:white; font-size:20px;">
            <th> Order ID </th>
            <th> Amount </th>
            <th> Date </th>
            <th> Invoice </th>
        </tr>

    <% while(dr.Read()) { %>

        <tr>                               
            <td> <% Response.Write(dr["o_id"]); %> </td>
            <td> &#8377; <% Response.Write(dr["o_amount"]); %> </td>
    
            <td> <% Response.Write(dr["o_date"]); %> </td>
           
            <td>
                <a href="invoice.aspx?order_id= <% Response.Write(dr["o_id"].ToString()); %>"> Invoice  </a>
            </td>
        </tr>

    <% } %>
    </table>
        </center>
</asp:Content>
