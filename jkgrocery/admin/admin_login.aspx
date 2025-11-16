<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="jkgrocery.admin.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <center>



    <div class="login-form" style="width:500px; height:250px; background-color:#eeee; border-radius:10px; margin-bottom:25px; margin-top:250px;">

   
    

    
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
                <center><asp:Button ID="btnsignin" runat="server" Text="SignIn" OnClick="btnsignin_Click" CssClass="button" BackColor="Gray" ForeColor="White" Height="44px" Width="115px" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="button" BackColor="Gray" ForeColor="White" Height="44px" Width="115px" OnClick="btncancel_Click" /><br />
                
            </td>
        </tr>
       
    </table>
         </div>
</center>

		
    </form>
</body>
</html>
