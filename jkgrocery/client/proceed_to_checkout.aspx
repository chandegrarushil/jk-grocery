<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="proceed_to_checkout.aspx.cs" Inherits="jkgrocery.client.proceed_to_checkout" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
    <table id="bastab" border="2"style="margin-top:20px; width:725px; font-size:20px; margin-bottom:25px; border-style:double;">
    <caption class="tabcaption" style="background-color:darkblue; color:white;"> Billing & shipping address </caption>
        <tr>
            <th style="text-align:center;"> Name </th>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="20px" Width="600px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th  style="text-align:center;"> E-mail </th>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="20px" Width="600px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <th  style="text-align:center;"> Phone Number </th>
            <td>
                <asp:TextBox ID="txtphone" runat="server"  MinLength="10" MaxLength="10" Height="20px" Width="600px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th  style="text-align:center;"> Address </th>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="600px"></asp:TextBox>
            </td>
        </tr>					   
        
    </table>
        </center>

    <%
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
        SqlCommand cmd= new SqlCommand("select * from tbl_cart join tbl_product on tbl_cart.c_proid=tbl_product.pro_id where c_userid='"+Session["userdata"]+"'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
    %>
    <center>
    <table id="purprotab" border="2"  style="margin-top:20px; width:725px; font-size:20px; margin-bottom:25px; border-style:double;">
    <caption class="tabcaption" style="background-color:darkblue; color:white;"> Purchased products </caption>
        <tr>
            <th style="width: 200px;"> Product name </th>
            <th style="width: 90px;"> Price </th>
            <th style="width: 90px;"> Quantity </th>
            <th style="width: 130px;"> Total </th>
        </tr>

        <% int total = 0;
            while (dr.Read()) {
                string price = dr["pro_price"].ToString();
                int prc = int.Parse(price);
                string cqty = dr["c_qty"].ToString();
                int qty = int.Parse(cqty);
                int sub = prc * qty;
                total = total + sub;
        %>

        <tr>                                
            <th style="color:#33cc33;font-style:italic;"> <% Response.Write(dr["pro_name"]); %> </th>
            <td style="text-align:center;"> &#8377; <% Response.Write(dr["pro_price"]); %> </td>
            <td style="text-align:center;"> <% Response.Write(dr["c_qty"]); %> </td>
            <th> &#8377; <% Response.Write(sub); %> </th>
        </tr>

        <% } %>

        <tr>
            <th colspan="3">Total</th>
            <th style="color:#33cc33;"> &#8377; <% Response.Write(total); %> </th>
        </tr>

        <% dr.Close(); %>

        <tr>
            <td colspan=4 align="right">
                <asp:Button ID="btnorder" runat="server" Text="Place order" OnClick="btnorder_Click" CssClass="button" Height="44px" Width="115px" BackColor="Green" ForeColor="White" Font-Size="12pt" Font-Bold="False" Font-Italic="True"/>
            </td>
        </tr>

    </table>
    </center>
</asp:Content>
