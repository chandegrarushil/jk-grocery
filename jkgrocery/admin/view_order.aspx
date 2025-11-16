<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="view_order.aspx.cs" Inherits="jkgrocery.admin.view_order" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
    <%
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd= new SqlCommand("select * from tbl_order", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
    %>

        <div class="order">
    <table align="center" id="order" border="1" style="border-style:inherit; width:1200px;text-align:center;;margin-top:25px; margin-bottom:25px;">
        <caption><h1> Invoice</h1> </caption>
    
        <tr style="height:35px; background-color:darkblue; color:white; font-size:20px;">
           
            <th> Order ID </th>
            <th> Amount </th>
            <th> Date </th>
            <th>  Invoice </th>
        </tr>

        <%while(dr.Read()) { %>

        <tr style="height:25px; background-color:#eeeeee;">
            <td><%Response.Write(dr["o_id"]); %></td>
            <td><%Response.Write(dr["o_amount"]); %></td>
            <td><%Response.Write((dr["o_date"])); %></td>
            <td>
                <a href="invoice.aspx?order_id=<%Response.Write(dr["o_id"].ToString()); %>" class="link">
                    Invoice
                </a>
            </td>
        </tr>

        <% } %>

    </table>
            </div>
        </center>
</asp:Content>
