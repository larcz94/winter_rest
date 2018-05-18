using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Serch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["id"] != "")
        {
            Label1.Text = (String)Session["username"];
           
        }

    }

    //SERCH ID

    protected void Button5_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
         Label2.Text = "Search complete";
      
    }

    

      
   
    // BANNED

    protected void Button2_Click(object sender, EventArgs e)
    {
         String act = null;

         SqlConnection con1 = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con1.Open();



        SqlCommand cmd = con1.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT * FROM login WHERE username='" + TextBox1.Text + "' ";
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            while (dr.Read())
            {
                act = dr["activated"].ToString();
            }
            con1.Close();
            if (act == "pending" || act == "active")
            {
                con1.Open();
                SqlCommand cmd1 = con1.CreateCommand();
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.CommandText = "UPDATE login SET activated='" + "banned" + "' WHERE username='" + TextBox1.Text + "'";
                int a = cmd1.ExecuteNonQuery();

                if (a > 0)
                {
                   /* Label2.Text="Sucessfully banned";
                    Response.Redirect( "Search.aspx");*/

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' Sucessfully banned!!!')", true);
          
                   
                }

                else
                {
                   Label2.Text="Error";
                   Response.Redirect("Search.aspx");
                }


            }

        }
    }



    // CHANGE USER TYPE
    protected void Button4_Click(object sender, EventArgs e)
    {

        String type = null;

        SqlConnection con1 = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con1.Open();

        

        SqlCommand cmd = con1.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT * FROM login WHERE username='" + TextBox1.Text + "' ";
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            while (dr.Read())
            {
                type = dr["usertype"].ToString();
            }
            con1.Close();
            if (type == "user")
            {
                con1.Open();


                SqlCommand cmd1 = con1.CreateCommand();
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.CommandText = "UPDATE login SET usertype ='" + "Manager" + "' WHERE username='" + TextBox1.Text + "'";
                int a = cmd1.ExecuteNonQuery();


               


              

                if (a > 0 )
                {

                /*  Label2.Text="Sucessfully Change from  user to admin";
                    Response.Redirect("Search.aspx");*/

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sucessfully Change from  user to manager !!!')", true);
          
                   
                }

                else
                {
                   Label2.Text="Error";
                    Response.Redirect("Search.aspx");
                }
                con1.Close();

            }
                
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Cannot Change Admin Account.')", true);
        
            }



        }
  
    //ACTIVE ACCOUNT
    protected void Button6_Click(object sender, EventArgs e)
    {
        String act = null;

        SqlConnection con1 = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con1.Open();



        SqlCommand cmd = con1.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT * FROM login WHERE username='" + TextBox1.Text + "' ";
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            while (dr.Read())
            {
                act = dr["activated"].ToString();
            }
            con1.Close();
            if (act == "pending" || act == "banned")
            {
                con1.Open();
                SqlCommand cmd1 = con1.CreateCommand();
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.CommandText = "UPDATE login SET activated='" + "active" + "' WHERE username='" + TextBox1.Text + "'";
                int a = cmd1.ExecuteNonQuery();

                if (a > 0)
                {
                   /* Label2.Text = "Sucessfully active";
                    Response.Redirect("Search.aspx");*/

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sucessfully activated!!!')", true);
        

                }

                else
                {
                    Label2.Text = "Error";
                    Response.Redirect("Search.aspx");
                }


            }

        }
    }
}

    