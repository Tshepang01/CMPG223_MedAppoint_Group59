using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_MedAppoint_Group59
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFirstName.Focus();

            //check if the user already exists  in the database
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConStr"].ConnectionString);

                

                conn.Close();

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConStr"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into CredentialsTB (FirstName,LastName,ContactNumber,Email,Password) values (@Uname ,@UlastName ,@UcontNum, @Uemail, @Upswrd)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@Uname", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@UlastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@UcontNum", txtContactNumber.Text);
                cmd.Parameters.AddWithValue("@Uemail", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Upswrd", txtPassword.Text);

                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Thank you for registering. Proceed to Login')</script>");
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtContactNumber.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtConfirmPassword.Text = "";

                //Response.Redirect("log.aspx");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}