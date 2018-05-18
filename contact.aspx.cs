//pull experiance 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

      
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con.Open();



        if (!(txtname.Text =="" || txtcontact.Text == ""|| txtcontact.Text == "" || txtmessage.Text == ""))
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO contact (name,contactno,email,message) VALUES('" + txtname.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtmessage.Text + "')";
            int a = cmd.ExecuteNonQuery();


            if (a > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thanks for contact us,our team will be contact you as soon as possible!!!')", true);
                txtname.Text = " ";
                txtcontact.Text = " ";
                txtemail.Text = " ";
                txtmessage.Text = " ";

        
        
            }


            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('invalid operations')", true);
            }
        }
        else{

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('invalid entered try again!!!')", true);
        }
        }


    }



        /*
        try
        {
            MailMessage Msg = new MailMessage();
            //Sender e-mail address.
            Msg.From = new MailAddress(txtemail.Text);
            //Recipient e-mail address.
            Msg.To.Add("sender@gmail.com");
            //Meaages Subject
            Msg.Subject = "Contact Us Form-Neerajcodesolutions";
            StringBuilder sb = new StringBuilder();
            sb.Append("Name :" + txtname.Text + "\r\n");
            sb.Append("Contact:" + txtcontact.Text + "\r\n");
            sb.Append("Email:" + txtemail.Text + "\r\n");
            sb.Append("Message:" + txtmessage.Text + "\r\n");

            Msg.Body = sb.ToString();
            // SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 25;
            smtp.Credentials = new System.Net.NetworkCredential("sender@gmail.com", "password");
            smtp.EnableSsl = true;
           /* smtp.Send(Msg);
            //Mail Message
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thanks for contact us,our team will be contact you as soon as possible')", true);
               

                // Clear the textbox values
            txtname.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
            txtmessage.Text = "";
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sending Fail')", true);
               
            

        }
    }
}*/