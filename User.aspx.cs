using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("sign.aspx");
        }
        else
        {
             Label1.Text = "Welcome";
        }
        Label3.Text = Session["username"].ToString();      
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con.Open();

       
       SqlCommand cmd = new SqlCommand("Select * from userdetails where id = '"+ Session["id"].ToString()+"' " , con);
         
        SqlDataReader dr = cmd.ExecuteReader();
        DataSet ds = new DataSet();
        Session["id"].ToString(); 
        if (dr.Read())
        {


            Label5.Text = dr["firstname"].ToString();
            Label7.Text = dr["lastname"].ToString();
            Label9.Text = dr["email"].ToString();
            Label11.Text = dr["mobileno"].ToString();
            Label13.Text = dr["line1"].ToString();
            Label15.Text = dr["line2"].ToString();
            Label17.Text = dr["city"].ToString();
            Label19.Text = dr["province"].ToString();
            Label21.Text = dr["startdate"].ToString();
            

            con.Close();


        }

        Label4.Visible = true;
        Label6.Visible = true;
        Label8.Visible = true;
        Label10.Visible = true;
        Label12.Visible = true;
        Label14.Visible = true;
        Label16.Visible = true;
        Label18.Visible = true;
        Label20.Visible = true;
        
   }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("edit.aspx");

    }
   
}
    
