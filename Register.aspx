<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Winter | Registration</title>
      <link rel="stylesheet" type="text/css" href="Css/Stylereg.css" />
</head>

<body style="box-shadow: inset 0px 0px 1000px #a29d9d;" runat="server">
     
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
        
          <h1><a>Winter<span class="logo_colour">Restaurant</span></a></h1>
          <h2 id="logo_text h2">NATURAL AND NUTRITIOUS</h2>
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


       <div class="container">
	<section id="content">
		<form runat="server" >
			<h1>Registration Form</h1>

           <table style="width:100%">
			
             <tr>
    <td><div style="width:400px">
				 
			<asp:DropDownList ID="Select1" runat="server">
                <asp:ListItem> -- Title -- </asp:ListItem>
                <asp:ListItem>Mr</asp:ListItem>
                <asp:ListItem>Mrs</asp:ListItem>
                <asp:ListItem>Miss</asp:ListItem>
            </asp:DropDownList>
				 
			</div></td>
                
    <td> <div style="width:400px">
				
			</div></td>
    
  </tr> 
                  <tr>
    <td> <div style="padding-left: 1px; padding-right: 9px">
				<asp:TextBox type="text" placeholder="Firstname" required="" id="firstname" runat="server" ></asp:TextBox>
			</div></td>
    <td>   
			<div style="width:400px">
				<asp:TextBox type="text" placeholder="Lastname" required="" id="lastname" runat="server" ></asp:TextBox>
			</div></td>
    
  </tr>
                 <tr>
    <td><div style="width:400px">
				<asp:TextBox   type="text" placeholder="Emali" required="" id="email" runat="server" ></asp:TextBox>
			</div></td>
    <td> <div style="width:400px">
				<asp:TextBox  type="text" placeholder="Mobile No" required="" id="mobileno" runat="server" ></asp:TextBox>
			</div></td>
    
  </tr>
            <tr>
    <td><p style="text-align:left; margin-left:16px;font-size: 18px;">Date of Birth</p></td>
    <td><p style="text-align:left; margin-left:16px;font-size: 18px;">Gender</p></td> 
    
  </tr>
              <tr>
    <td><div style="width:400px">
        <asp:TextBox name="Date of Birth" type="text" placeholder="DD/MM/YYY" required="" id="birth" runat="server" ></asp:TextBox>
			</div></td>
    <td> <div style="width:400px">

       

      
			<asp:DropDownList ID="Select2" runat="server">
                <asp:ListItem>-- Select Your Gender --</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
			</div></td>
    
  </tr>
               <tr>
    <td><div style="width:400px">
				<asp:TextBox   type="text" placeholder="NIC No" required="" id="nic" runat="server" ></asp:TextBox>
			</div></td>
    <td> <div style="width:400px">
				<asp:TextBox  type="text" placeholder="Username" required="" id="username" runat="server" ></asp:TextBox>
			</div></td>
    
  </tr>

                 <tr>
    <td><div style="width:400px">
				<asp:TextBox  type="password" placeholder="Password" required="" id="password" runat="server" ></asp:TextBox>
			</div ></td>
    <td><div style="width:400px; margin-top: 05px;">
				<asp:TextBox type="password" placeholder="Confirm Password" required="" id="conformpassword" runat="server" ></asp:TextBox>
        </div>
        

    </td>
    
  </tr>
                 <tr>
    <td><p style="text-align:left; margin-left:16px;font-size: 18px;">Address</p></td>
     
    
  </tr>

             <tr>
    <td><div style="width:400px">
				<asp:TextBox type="text" placeholder="Line 1 " required="" id="addressl1" runat="server" ></asp:TextBox>
			</div></td>
                 <td>
                    <asp:TextBox   type="text" placeholder="Line 2 " required="" id="addressl2" runat="server" ></asp:TextBox>
                 </td>

                 </tr>
               <tr>
    <td><div style="width:400px">
				<asp:TextBox  type="text" placeholder="City" required="" id="addresscity" runat="server" ></asp:TextBox>
			</div></td>
                 <td>
                    <asp:TextBox  type="text" placeholder="Province " required="" id="addressprovince" runat="server" ></asp:TextBox>
                 </td>

                 </tr>

                <tr>
    <td><p style="text-align:left; margin-left:16px;font-size: 18px;">User Type</p></td>
                     <td><p style="text-align:left; margin-left:16px;font-size: 18px;">Start Date</p></td>
     
    
  </tr>
           
                <tr>
    <td><div style="width:400px">

			<asp:DropDownList ID="Select3" runat="server">
                <asp:ListItem>-- Select Your Occupation Title --</asp:ListItem>
                <asp:ListItem>manager</asp:ListItem>
                <asp:ListItem>user</asp:ListItem>
        </asp:DropDownList>

			</div></td>

    <td> <div style="width:400px">
       <asp:TextBox  type="text" placeholder="DD/MM/YYY " required="" id="startdate" runat="server" ></asp:TextBox>
			</div>

    </td>
    
  </tr>

        
            
            
            
                
		
</table>
            			<div style="height: 23px">
                
               <asp:Button ID="regb" Text="registration" type="submit" runat="server" OnClick="Unnamed1_Click"   />
				
                            
				
			</div>

            <div style="height: 35px">
             
				
                            
				
			   <asp:Button ID="clrb" Text="clear" type="submit" runat="server" OnClientClick="this.form.reset();return false;"  />
             
				
                            
				
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
