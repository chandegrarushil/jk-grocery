<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="jkgrocery.admin.add_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="product">
    <table align="center" id="addpro" border="1" style="border:revert; height:400px; width:650px; background-color:#white; margin-top:25px; margin-bottom:25px;">
        <th colspan="2" style="background-color:#eeeeee;"><h1>Add Product </h1> </th>
        <tr>
            <td align="center" style="font-size:20px; background-color:darkblue; color:white;"> Select Brand: </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="450px" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="cat_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jaykhodiyarConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size:20px; background-color:darkblue; color:white;"> Product name: </td>
            <td>
                <asp:TextBox ID="txtpname" runat="server" Height="20px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size:20px; background-color:darkblue; color:white;"> Product image: </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="450px" Font-Size="15px" />
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size:20px; background-color:darkblue; color:white;"> Product price: </td>
            <td>
                <asp:TextBox ID="txtprice" runat="server" Height="20px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size:20px; background-color:darkblue; color:white;"> Product Description: </td>
            <td>
                <asp:TextBox ID="txtdes" runat="server" TextMode="MultiLine" Height="20px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size:20px; background-color:darkblue; color:white;"> Product Stock: </td>
            <td>
                <asp:TextBox ID="txtstock" runat="server" Height="20px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <center> <asp:Button ID="btnsubmit" runat="server" Text="Add" OnClick="btnsubmit_Click" CssClass="button" BackColor="#006600" ForeColor="White" Height="44px" Width="115px" /> </center>
            </td>
        </tr>
    </table>
        </div>
        </center>
</asp:Content>
