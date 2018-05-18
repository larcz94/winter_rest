using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgetpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

     protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con.Open();

        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "insert into forgetpassword(email) values ('" + txtemail.Text + "')";
        cmd1.ExecuteNonQuery();
        con.Close();
      
        SqlCommand cmd = new SqlCommand("SELECT email,id FROM userdetails Where Email= '" + txtemail.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            


            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your password has been sent into your email')", true);
           
            
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('E-mail is not valid, Please Enter Correct E-mail')", true);
            
           

        }
      

        txtemail.Text = "";
    }

}

