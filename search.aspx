<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Serch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Winter | Serch</title>
   

    <link href="Css/Stylseearch.css" rel="stylesheet" />
   
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
    
   
       
        
    

    <form id="form1" runat="server">
    <div>
         <div style="height: 305px">
    
            

             <asp:Label ID="Label1" runat="server" Text="Admin Page"></asp:Label>
 
             <table style="margin-left: 400px;margin-top: 57px;"><tr><td colspan="4">
   
                 <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                         <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                         <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                         <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
                         <asp:BoundField DataField="activated" HeaderText="activated" SortExpression="activated" />
                         <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                         <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                     </Columns>
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#E9E7E2" />
                     <SortedAscendingHeaderStyle BackColor="#506C8C" />
                     <SortedDescendingCellStyle BackColor="#FFFDF8" />
                     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                 </asp:GridView>
                 <div>
                 <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                     </div>
</td></tr>

                    <tr>
<td colspan="2">Insert Username
                        </td>
<td colspan="2">
    <asp:TextBox ID="TextBox1" runat="server" placeholder=" Username" ></asp:TextBox>
    
    <asp:Button ID="Button5" runat="server" Text="Search" OnClick="Button5_Click" />
            </td>
</tr>

<tr>
    <td>
            
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Active" />
            
    </td>
    <td>
        <asp:Button ID="Button2" runat="server" Text="Banned" OnClick="Button2_Click"  /></td>
    <td>
        <asp:Button ID="Button4" runat="server" Text="Change user type" OnClick="Button4_Click"  /></td>
    <td class="auto-style2">
        </td>
</tr>

    </table>
            
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:winterConnectionString %>" SelectCommand="SELECT [username], [password], [usertype], [activated] FROM [login]"></asp:SqlDataSource>
            
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:winterConnectionString %>" SelectCommand="SELECT [id], [username], [password], [usertype], [activated], [date], [time] FROM [login] WHERE ([username] = @username)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" Type="String" />
                        </SelectParameters>
             </asp:SqlDataSource>
            
                    </div>

        <div style="margin-left:518px;margin-bottom:91px;">
    
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
                    <asp:BoundField DataField="activated" HeaderText="activated" SortExpression="activated" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
    
    </div>

        <div>
    
    </div>

        <div>
    
    </div>

        </div>
    </form>
     <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="examples.html">About</a> | <a href="page.html">Service</a> | <a href="another_page.html">Contact Us</a> </p>
      <p>Copyright &copy WINTER (PVT) LTD </p>
    </div>
</body>
</html>
