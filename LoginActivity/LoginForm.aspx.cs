using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LoginActivity
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\user1\Source\Repos\SessionalPaper\LoginActivity\App_Data\username.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);
            SqlCommand cmd = new SqlCommand();
            string query = "select * from Table where user=@user and password=@password";
            cmd.Connection = con;
            cmd.CommandText = query; 
            cmd.Parameters.AddWithValue("@user",TextBox1.Text);
            cmd.Parameters.AddWithValue("@password",TextBox2.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            
            if(rd.HasRows)
            {
                Session["user"]=TextBox1.Text;
                Response.Redirect("Details_page.aspx");
            }
            else
            {
                Label3.Text = "Incorrect Username or password";
            }
        }
    }
}