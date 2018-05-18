<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign.aspx.cs" Inherits="sign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Winter | Login</title>
      <link rel="stylesheet" type="text/css" href="Css/Stylesign.css" />
</head>

<body style="box-shadow: inset 0px 0px 1000px #a29d9d;" >
     
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
        
          <h1><a>Winter<span class="logo_colour">Restaurant</span></a></h1>
          <h2>NATURAL AND NUTRITIOUS</h2>
        </div>
      </div>
      <div id="menubar">
           <ul id="menu">
        
          <li class="selected">
              <a href="Home.aspx">Home</a></li>
          <li> <a href="about.aspx">About</a></li>
            <li> <a href="service.aspx">Services</a></li>
             <li> <a href="contact.aspx">Contact Us</a></li>
             
       
            </ul>
          </div>
        </div>
      </div>

    <div> <asp:Label ID="Label1" runat="server" Visible="false"> </asp:Label></div>
     <div> <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label></div>
     <div> <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label></div>

    <div> </div>

        
        <div class="container">
	<section id="content">
		<form runat="server">
			<h1>Login Form</h1>
			<div>
				<asp:TextBox id="username"   runat="server" placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox >
			</div>
			<div>
				<asp:TextBox id="password"  runat="server" placeholder="Password" TextMode="Password"  AutoCompleteType="Disabled"></asp:TextBox>
			</div>
			<div>

				<asp:Button  id="button" runat="server" Text="login" OnClick="Button1_Click"  />
				
			</div>
            <div style="padding:9px"><a href="forgetpass.aspx">Lost your password?</a>
				<a href="Register.aspx">Register</a>
                </div>
		</form>
		
			
		
	</section>
</div>

  
    
         

  

    
         <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="examples.html">About</a> | <a href="page.html">Service</a> | <a href="another_page.html">Contact Us</a> </p>
      <p>Copyright &copy WINTER (PVT) LTD </p>
    </div>
      
    
</body>
</html>
