using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;

public partial class Register : System.Web.UI.Page
{
      protected void Page_Load(object sender, EventArgs e)
    {

        
    }



      protected void Unnamed1_Click(object sender, EventArgs e)
      {

          SqlConnection con = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
          con.Open();
          if (password.Text == conformpassword.Text)
          {
              SqlCommand cmd = con.CreateCommand();
              cmd.CommandType = System.Data.CommandType.Text;
              cmd.CommandText = "INSERT INTO userdetails (title,firstname,lastname,email,mobileno,birth,gender,nic,line1,line2,city,province,usertype,startdate) VALUES('"+Select1.Text+"','" + firstname.Text + "','" + lastname.Text + "','" + email.Text + "','" + mobileno.Text + "','" + birth.Text + "','" + Select2.Text + "','" + nic.Text + "','" + addressl1.Text + "','" + addressl2.Text + "','" + addresscity.Text + "','" + addressprovince.Text + "','" + Select3.Text + "','" + startdate.Text + "')";
              int a = cmd.ExecuteNonQuery();
              con.Close();

              con.Open();
              SqlCommand cmd2 = con.CreateCommand();
              cmd.CommandType = System.Data.CommandType.Text;
              cmd2.CommandText = "INSERT INTO login (username,password,confirmpassword,usertype) VALUES('" + username.Text + "','" + password.Text + "','"+conformpassword.Text+"','"+Select3.Text+"')";
              int b = cmd2.ExecuteNonQuery();

              if (a > 0 && b > 0)
              {
                  Response.Redirect("sign.aspx");
              }

              else
              {
                  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error')", true);
               
                 
              }
          }
          else
          {
              ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password and Confirm password did not match, Try again')", true);
               

          }

      }  
}

      



