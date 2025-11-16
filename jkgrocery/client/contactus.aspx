<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="jkgrocery.client.contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="width:100%; height:600px; background-color:#E5E5E5; margin-bottom:50px;">
   <div class="r1" style="margin-left:200px; margin-top:30px; ">
                         <div class="i1" style="margin-left:-20px;">
                            <asp:Image ID="Image1" runat="server" Height="600px" Width="600px" style="margin-left:61px" ImageUrl="~/images/contact.png" />     
                         
                            <div class="icons" style="margin-top:-580px; margin-left:900px; font-size:20px; ">
                                <asp:Image ID="Image2" runat="server" Height="80px" Width="80px" style="margin-left:20px; margin-top:50px;" ImageUrl="~/images/Mail.png" />     
                                <p> jkgrocery@gmail.com</p><br /> <br />
          
                                  <asp:Image ID="Image3" runat="server" Height="80px" Width="80px" style="margin-left:20px;" ImageUrl="~/images/Phone.png" />       
                                <p>0288 255 0888</p><br /> <br />

                                <asp:Image ID="Image4" runat="server" Height="80px" Width="80px" style="margin-left:20px;" ImageUrl="~/images/Home.png" />       
                                <p> Jay Khodiyar Grocery, <br />Satellite Park Society,<br /> Ranjit Sagar Road,<br />Jamnagar-361005.</p><br /> 
                            </div>   
                         </div>   
                    </div>
    </div>
</asp:Content>
