using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace app1
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



        protected void btnRegisterUser_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    string connstring = ConfigurationManager.ConnectionStrings["shivam"].ConnectionString;

                    string Username = txtUsername.Text;
                    string email = txtemail.Text;
                    string Password = txtpassword.Text;
                    string Phone_No = txtNumber.Text;
                    SqlConnection mycon = new SqlConnection(connstring);

                    mycon.Open();
                    string strquery = "INSERT INTO login(Username,email ,Password, Phone_No) values(@Username,@email,@Password,@phone)";

                    SqlCommand cmd = new SqlCommand(strquery, mycon);

                    cmd.Parameters.AddWithValue("@Username", Username);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    cmd.Parameters.AddWithValue("@phone", Phone_No);

                    cmd.ExecuteNonQuery();

                    cmd.Dispose();

                    txtUsername.Text = string.Empty;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
           
            Response.Redirect("RegisterUserList.aspx");

            
        }
    }
}