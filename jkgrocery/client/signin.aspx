<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="jkgrocery.client.signin" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>



    <div class="login-form" style="width:500px; height:250px; background-color:#eeee; border-radius:10px; margin-bottom:25px; margin-top:25px;">

   
    

    
    <table id="signtable" style="margin-top:15px; ">
        <th colspan="2" style="font-size:50px;">Sign In </th>
        <tr>
            <td style="vertical-align:top; font-size:25px;"> Enter E-mail ID:</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="309px" Height="25px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"  ErrorMessage="Please enter your E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top; font-size:25px;"> Enter password: </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="309px" Height="25px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"  ErrorMessage="Please enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <center><asp:Button ID="btnsignin" runat="server" Text="SignIn" OnClick="btnsignin_Click" CssClass="button" BackColor="Green" ForeColor="White" Height="44px" Width="115px" style="border-radius:5px;" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="button" BackColor="Red" ForeColor="White" Height="44px" Width="115px" style="border-radius:5px;"/><br />
                </center>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <a href="signup.aspx" class="button" style="width:400px;">
                    Create New Account?
                </a>
            </td>
        </tr>
    </table>
         </div>
</center>

</asp:Content>
