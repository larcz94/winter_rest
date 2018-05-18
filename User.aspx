<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Winter | User</title>

    <link href="Css/userstyle.css" rel="stylesheet" />
   
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
            
        
         


    
    <div style=" width:607px; height:559px;margin-left: 0px;margin-right: auto;">
    <form id="form1" runat="server">
         <div style="border:none; margin-left:auto;margin-right:auto;height:30px;margin-bottom: 35px;" >
              <div>
               <asp:Button ID="Button1" runat="server" Text="logout" OnClick="Button1_Click" />   </div>
       <p> <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
           </p>
       
        <asp:Button ID="Button2" runat="server" Text="View Profile" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Edit Your Profile" OnClick="Button3_Click" /> 
    </div>

       <div>
        <table style="width: 100%;">
             <tr >
               <td style="margin-bottom:2px;">  <asp:Label ID="Label4" runat="server" Text="First Name " Visible="False"></asp:Label></td>
               <td>  <asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
                  </tr>
             <tr>
                <td> <asp:Label ID="Label6" runat="server" Text="Last Name" Visible="False"></asp:Label> </td>
                <td> <asp:Label ID="Label7" runat="server" Text=""></asp:Label> </td>
                
                  </tr>
            <tr>
              <td>  <asp:Label ID="Label8" runat="server" Text="E-Mail" Visible="False"></asp:Label></td>
                <td> <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                  
                </td>
                  
            </tr>
           
            <tr>
                <td><asp:Label ID="Label10" runat="server" Text="Mobile No" Visible="False"></asp:Label></td>
                 <td><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
                
            </tr>
            <tr>
               <td> <asp:Label ID="Label12" runat="server" Text="Line 1" Visible="False"></asp:Label></td>
                 <td><asp:Label ID="Label13" runat="server" Text=""></asp:Label></td>
                
            </tr>
              <tr>
                
                 <td> <asp:Label ID="Label14" runat="server" Text="Line 2" Visible="False"></asp:Label></td>
                 <td><asp:Label ID="Label15" runat="server" Text=""></asp:Label></td>

            </tr>
              <tr>
                   <td> <asp:Label ID="Label16" runat="server" Text="City" Visible="False"></asp:Label></td>
           <td>      <asp:Label ID="Label17" runat="server" Text=""></asp:Label></td>
             
            </tr>
              <tr>
             <td> <asp:Label ID="Label18" runat="server" Text="Province" Visible="False"></asp:Label></td>
                <td> <asp:Label ID="Label19" runat="server" Text=""></asp:Label> </td>
             
            </tr>
             <tr>
             <td> <asp:Label ID="Label20" runat="server" Text="Start date" Visible="False"></asp:Label></td>
                <td> <asp:Label ID="Label21" runat="server" Text=""></asp:Label> </td>
             
            </tr>
        </table>

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
  

