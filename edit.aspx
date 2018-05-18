<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Winter | Edit Profile</title>
    <link href="Css/editcss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
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

    
    <div style="width:1024px; height:568px;margin-top: 38px;">
    
    <form id="form1" runat="server">
        <table style="width: 100%;">
             <tr >
               <td class="auto-style1" >  <asp:Label ID="Label4" runat="server" Text="First Name " ></asp:Label></td>
                <td class="auto-style1" >  <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name " ></asp:TextBox>
                 <td class="auto-style1"></td>
                  </tr>
             <tr >
               <td >  <asp:Label ID="Label1" runat="server" Text="Last Name " ></asp:Label></td>
                <td > <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name " ></asp:TextBox></td>
                  </tr>
             <tr >
               <td >  <asp:Label ID="Label2" runat="server" Text="E-Mail " ></asp:Label></td>
               <td >  <asp:TextBox ID="TextBox3" runat="server" placeholder="E-Mail" ></asp:TextBox></td>
                  </tr>
             <tr >
               <td>  <asp:Label ID="Label3" runat="server" Text="Mobile No" ></asp:Label></td>
                <td > <asp:TextBox ID="TextBox4" runat="server" placeholder="Mobile No" ></asp:TextBox></td>
                  </tr>
             <tr >
               <td >  <asp:Label ID="Label5" runat="server" Text="Line 1 " ></asp:Label></td>
               <td >  <asp:TextBox ID="TextBox5" runat="server" placeholder="Line 1" ></asp:TextBox></td>
                  </tr>
             <tr >
               <td >  <asp:Label ID="Label6" runat="server" Text="Line 2 " ></asp:Label></td>
              <td >   <asp:TextBox ID="TextBox6" runat="server" placeholder="Line 2" ></asp:TextBox></td>
                  </tr>
             <tr >
               <td >  <asp:Label ID="Label7" runat="server" Text="City " ></asp:Label></td>
               <td >  <asp:TextBox ID="TextBox7" runat="server" placeholder="City" ></asp:TextBox></td>
                  </tr>
             <tr >
               <td >  <asp:Label ID="Label8" runat="server" Text="Province " ></asp:Label></td>
              <td >   <asp:TextBox ID="TextBox8" runat="server" placeholder="Province " ></asp:TextBox></td>
                  </tr>
            </table>
        <div>
            <asp:Button ID="Button1" runat="server" Text="show" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click" />
        </div>
        
         <div>

               <asp:Button ID="Button3" runat="server" Text="Back to Details" OnClick="Button3_Click" />

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
