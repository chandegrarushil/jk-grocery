<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_category.aspx.cs" Inherits="jkgrocery.admin.add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="tb">
    <table align="center" id="addcat" border="1" style="margin-top:20px;width:650px; height:275px; border:revert;background-color:white; margin-bottom:15px;">
        <th colspan="2" ><h1>Add Category </h1></th>
        <tr>
            <td align="center" style="font-size:25px;background-color:darkblue; color:white; "> Category name: </td>
            <td> <asp:TextBox ID="txtname" runat="server" BackColor="Silver" Height="25px" Width="300px"></asp:TextBox> </td>
        </tr>
        <tr>
            <td align="center" style="font-size:25px; background-color:darkblue; color:white;"> Category image: </td>
            <td> <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="300px" Font-Size="15px" /> </td>
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
