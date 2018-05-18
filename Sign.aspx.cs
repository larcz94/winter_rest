using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



public partial class sign : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        SqlConnection con = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT * FROM login WHERE username='" + username.Text + "' AND password='" + password.Text + "'";
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            dr.Read();
            String st = dr["activated"].ToString();
            String ut = dr["usertype"].ToString();
            String uid = dr["id"].ToString();

            if (st == "active")
            {
                if (ut == "manager")
                {

                    Session["id"] = dr["id"].ToString();
                    Session["username"] = dr["username"].ToString();
                    Response.Redirect("manager.aspx"); 
                }

                else
                {
                    Session["id"] = dr["id"].ToString();
                    Session["username"] = dr["username"].ToString();
                    Response.Redirect("user.aspx");

                }
            }
             else if (st == "pending") {


                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Account is not activated.')", true);
               
                
                

             }
            else if (st == "banned"){
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Account has banned.')", true);
             }
         }

            else
            {
               
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('invalid Username or Password')", true);
              
            }

        
       

        }

    }


