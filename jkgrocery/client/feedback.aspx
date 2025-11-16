<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="jkgrocery.feedback" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <center>



    <div class="fed-form" style="width:500px; height:400px; background-color:#eeee; border-radius:10px; margin-bottom:25px; margin-top:25px;">
           <table id="signtable" style="margin-top:15px; ">
         <th colspan="2" style="font-size:50px;">Feedback</th>
        <tr>
            <td  style="font-size:20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="txtname" Height="30px"  style="border: 1px solid black;background-color:#eeeee;"  Width="400px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="font-size:15px;margin-left:25px;" ErrorMessage="Please Enter Name" ForeColor="Red" ControlToValidate="txtname" SetFocusOnError="True"></asp:RequiredFieldValidator> 
            </td>
        </tr>

        <tr>
            <td  style="font-size:20px;">&nbsp;&nbsp; &nbsp;&nbsp; E-Mail<br />
                &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtemail" Height="30px" style="border:1px solid black;background-color:#efeee;" Width="400px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" style="font-size:15px;margin-left:25px;" runat="server" ErrorMessage="Please Enter E-Mail" ForeColor="Red" ControlToValidate="txtemail" SetFocusOnError="True"></asp:RequiredFieldValidator>
               
            </td>
        </tr>

        <tr>
            <td style="font-size:20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comment<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtmsg" Height="50px"  style="border: 1px solid black;background-color:#eeeee;"  Width="400px" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="font-size:15px;margin-left:25px;" ErrorMessage="Please Enter your comment" ForeColor="Red" ControlToValidate="txtmsg" SetFocusOnError="True"></asp:RequiredFieldValidator> 
            </td>
        </tr>
      
         <tr >
            <td style="align-items:center;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <center>   <asp:Button ID="Button1" runat="server" style="padding:10px;font-size:20px;width:150px" Text="Submit" BackColor="Green" BorderColor="Black" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" /></center>
            </td>
        </tr>
    </table>
        </div>
    </center>

</asp:Content>
