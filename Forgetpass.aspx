<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgetpass.aspx.cs" Inherits="forgetpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

   
    <head>

    <title>Winter | Forget Password</title>

    <link href="Css/forgetstyle.css" rel="stylesheet" />

 </head >
<body style="box-shadow: inset 0px 0px 1000px #a29d9d;" >
    <div>
   
        </div>
     <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">

             <h1><a>Winter<span class="logo_colour">Resturent</span></a></h1>
          <h2>NATURAL AND NIUTRIOUS</h2>

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

        <div style="margin-top: 80px;">
      
        <h3 style="margin-left: 494px;">Send Forget Password In Registerd Email </h3>
        <asp:TextBox ID="txtemail" runat="server"  Placeholder="Enter Your Registed Email ID" AutoCompleteType="Disabled"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="78px" />
        <br />
       
   
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
