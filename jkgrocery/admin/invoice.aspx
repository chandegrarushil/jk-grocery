<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="jkgrocery.admin.invoice" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
    <table align=center id="conttable" border="2" style="margin-top:15px; width:1200px; background-color:white;">
        <th colspan="7" style="height:100px; background-color:darkblue; color:white;"><h1>Jay Khodiyar Grocery</h1>
        <h2>Jay Khodiyar Grocery, Satellite Park Society, Ranjit Sagar Road,Jamnagar-361005.</h2></th>
        


    <%
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from tbl_item_order where i_order_id='" + Request.QueryString["order_id"] + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select * from tbl_order where o_id='" + Request.QueryString["order_id"] + "'", con1);
        con1.Open();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        dr1.Read();
    %>
    
    
        
            <tr style="font-size:18px;">
                <td> Customer Name: </td>
                <td style="text-align:center;"><b><% Response.Write(dr1["o_name"]); %> </b> </td>
                <td > Phone no: </td>
                <td colspan="2"> <% Response.Write(dr1["o_phone"]); %> </td>
                <td> Order date:</td>
                <td >
                    <b><% Response.Write((dr1["o_date"])); %> </b>
                </td>
            </tr>
            <tr style="font-size:18px;">
                <td> Email ID</b> 
                <td> <% Response.Write(dr1["o_email"]); %> </td>
                <td> Address </td>
                <td colspan="2"> <% Response.Write(dr1["o_address"]); %> </td>
                 <td> Bill no:</td>
                <td colspan="2" style="text-align:center;"><b><% Response.Write(dr1["o_id"]); %> </b>  </td>
               

            </tr>
        <tr align="center">
            <td colspan="7" ><h2><b>* Invoice *</b></h2></td>
        </tr>
           
        </center>

    <% dr1.Close();
    con1.Close(); %>

  
  
        <tr align="center" style="font-size:18px;">
            <td><b> Sr no. </b></td>
            <td colspan="2"><b> Product name</b> </td>
            <td><b> Price </b></td>
            <td><b> Quantity </b></td>
            <td colspan="2"><b> Total </b></td>
        </tr>

    <% int total=0;
        while (dr.Read()) { %>

        <tr style="text-align:center; height:30px;">                               
            <td> <% Response.Write(dr["i_id"]); %> </td>
            <td colspan="2" style="color:#33cc33;"><h2><% Response.Write(dr["i_pname"]); %> </h2> </td>
            <td> &#8377; <% Response.Write(dr["i_price"]); %> </td>
            <td> <% Response.Write(dr["i_qty"]); %> </td>
            <td colspan="2"> &#8377; <% Response.Write(dr["i_amount"]); %> </td>
        </tr>

    <%
        string price = dr["i_price"].ToString();
        int prc = int.Parse(price);
        string oqty = dr["i_qty"].ToString();
        int qty = int.Parse(oqty);
        int sub = prc * qty;
        total = total + sub;
    }%>

        <tr align="center">
            <td colspan="5"><h2><b> Grand Total</b> </h2></td>
            <td colspan="2" style="color:#33cc33;"><h2><b> &#8377; <% Response.Write(total); dr.Close(); con.Close(); %> </b></h2></td>
        </tr> 		
    </table>
        </center>
</asp:Content>

