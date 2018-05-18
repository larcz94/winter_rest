using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("sign.aspx");
        }
        else
        {
           
        }




    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
        con.Open();


        SqlCommand cmd = new SqlCommand("Select * from userdetails where id = '" + Session["id"].ToString() + "'  ", con);

        SqlDataReader dr = cmd.ExecuteReader();
        DataSet ds = new DataSet();
        Session["id"].ToString();
        if (dr.Read())
        {


            TextBox1.Text = dr["firstname"].ToString();
            TextBox2.Text = dr["lastname"].ToString();
            TextBox3.Text = dr["email"].ToString();
            TextBox4.Text = dr["mobileno"].ToString();
            TextBox5.Text = dr["line1"].ToString();
            TextBox6.Text = dr["line2"].ToString();
            TextBox7.Text = dr["city"].ToString();
            TextBox8.Text = dr["province"].ToString();



            con.Close();



        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Updated ')", true);
               
          
           SqlConnection con = new SqlConnection("Data Source=LARCZ-PC;Initial Catalog=winter;Integrated Security=True");
           con.Open();

           SqlCommand cmd = con.CreateCommand();
           cmd.CommandType = CommandType.Text;
           cmd.CommandText = "Update userdetails Set firstname = '" + TextBox1.Text + "' ,lastname = '" + TextBox2.Text + "',email = '" + TextBox3.Text + "',mobileno = '" + TextBox4.Text + "',line1 = '" + TextBox5.Text + "',line2= '" + TextBox6.Text + "',city = '" + TextBox7.Text + "',province = '" + TextBox8.Text + "'       Where id= '" + Session["id"] + "' ";
           cmd.ExecuteNonQuery();

           con.Close();

          

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Response.Redirect("User.aspx");
    }
}
