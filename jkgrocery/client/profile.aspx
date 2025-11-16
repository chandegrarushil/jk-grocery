<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="jkgrocery.client.profile" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <%
          SqlConnection con = new SqlConnection("Data Source=LAPTOP-VLD6TRKE\\SQLEXPRESS02;Initial Catalog=jaykhodiyar;Integrated Security=True");
          SqlCommand cmd= new SqlCommand("select * from tbl_user where user_id='"+Session["userdata"]+"'", con);
          con.Open();
          SqlDataReader dr1 = cmd.ExecuteReader();
          
    %>

    <center>
    <table id="ordtab" align="center" border="2" style="width:400px; margin-top:20px; font-size:20px;text-align:center;">
        <th colspan="2" style="background-color:darkblue; color:white;"><h1> My Profile</h1></th>

        <% while(dr1.Read()) { %>

        <tr>                               
            <th> User ID:</th> 
                <td><% Response.Write(dr1["user_id"]); %></td>
        </tr>
        <tr>
            <th>User Name:</th> 
            <td><% Response.Write(dr1["user_name"]);%> </td>
        </tr>

        <tr>
             <th> Email:</th>
            <td><%Response.Write(dr1["user_email"]);%></td>
        </tr>
        <tr>
            <th>Address:</th>
            <td><%Response.Write(dr1["user_address"]);

%></td>
            
        </tr>

        <tr>
            <th>Phone No:</th>
            <td><%Response.Write(dr1["user_phone"]); %></td>
        </tr>



        
    
    <% } %>
        </tr>
    </table>
        </center>

</asp:Content>
