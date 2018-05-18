<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Winter | Contact Us</title>
    <link href="Css/contsctstyle.css" rel="stylesheet" />
    <style type="text/css">
       
    </style>
</head >
<body style="box-shadow: inset 0px 0px 1000px #a29d9d;" >
    <div>
   
        </div>
     <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">

             <h1><a>Winter<span class="logo_colour">Restaurant</span></a></h1>
          <h2>NATURAL AND NUTRITIOUS</h2>

            </div>
          </div>
          <div id="menubar">
              </div>
           <ul id="menu">
        

          <li class="selected">
              <a href="Home.aspx">Home</a></li>
         <li> <a href="about.aspx">About</a></li>
            <li> <a href="service.aspx">Services</a></li>
             <li> <a href="contact.aspx">Contact Us</a></li>
       
            </ul>
        </div>
         </div>

    
    <div style="width:1024px; height:568px;">
    
    <form id="form1" runat="server">
        <div id="box">
            <h1 style="    margin-top: 23px; margin-bottom: -51px;text-align: center;font-size: 40px;
}">Contact Us</h1>
             <div id="tbl" style="margin-top:60px;">
            <table>
                <tr>
                    <td style="font-size:20px;margin-top: 16px;">
                        Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size:20px;margin-top: 16px;" class="auto-style1">
                        Conatct Number
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtcontact" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size:20px;margin-top: 16px;">
                        Email
                    </td>
                    <td>
                              <asp:TextBox ID="txtemail" runat="server" AutoCompleteType="Disabled" CausesValidation="True"></asp:TextBox>
                        

                    </td>
                </tr>
                <tr>
                    <td style="font-size:20px;margin-top: 16px;">
                        Message
                    </td>
                    <td>
                       
                        <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled" CausesValidation="True" ValidateRequestMode="Enabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  colspan="2">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
            </table>
       
                 </div>


        </div>

    </form> 
        </div>

       <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="examples.html">About</a> | <a href="page.html">Service</a> | <a href="another_page.html">Contact Us</a> </p>
      <p>Copyright &copy WINTER (PVT) LTD </p>
    </div>

</body>
</html>
