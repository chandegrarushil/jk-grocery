<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="jkgrocery.client.signup" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>



    <div class="reg-form" style="width:550px; height:330px; background-color:#EEEE; border-radius:10px; margin-bottom:25px; margin-top:25px; ">

   
         <table align=center id="signuptab" style="margin-top:15px;">
       <th colspan="2" style="font-size:50px;">Sign Up </th>
        <tr>
            <td style="vertical-align:top; font-size:25px;"> Enter Name: </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="309px" Height="25px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Pleasae enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top; font-size:25px;"> Enter E-mail ID: </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="309px" Height="25px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter your E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
            <td style="vertical-align:top; font-size:25px;"> Enter Phone Number: </td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" MinLength="10" MaxLength="10" Width="309px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top; font-size:25px"> Enter Address: </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" Width="309px" Height="25px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="vertical-align:top; font-size:25px"> Password: </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" MinLength="6" MexLength="8" Width="309px" Height="25px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Please enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td colspan="2">
              <center>  <asp:Button ID="btnsignup" runat="server" Text="SignUp" OnClick="btnsignup_Click" CssClass="button" Height="45px" Width="115px" BackColor="Green" ForeColor="White" style="border-radius:5px;"  />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" CssClass="button" BackColor="Red" Height="45px" Width="115px" ForeColor="White" style="border-radius:5px;"  /><br /></center>
            <br />
            </td>
        </tr>
    </table>
    </div>
</center>
</asp:Content>
