using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMPG223_MedAppoint_Group59
{
    public partial class adminLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConStr"].ConnectionString))
            {
                conn.Open();

                // Use a parameterized query to avoid SQL injection
                string checkuser = "SELECT COUNT(*) FROM AdminTB WHERE Username=@Username";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);

                // ExecuteScalar returns an object, so cast it to int or handle null safely
                object result = cmd.ExecuteScalar();
                int? userCount = result as int?; // Cast to nullable int

                if (userCount.HasValue && userCount.Value == 1) // Check if userCount is 1
                {
                    string checkPasswordQuery = "SELECT password FROM AdminTB WHERE Username=@Username";
                    SqlCommand passCmd = new SqlCommand(checkPasswordQuery, conn);
                    passCmd.Parameters.AddWithValue("@Username", txtUsername.Text);

                    object passResult = passCmd.ExecuteScalar();
                    string password = passResult?.ToString().Trim(); // Handle possible null result safely

                    if (password == txtPassword.Text)
                    {
                        // Fetch Employee Number (assuming you are using the Credentials table here)
                        string userIDQuery = "SELECT Emp_Num FROM AdminTB WHERE Password=@Password";
                        SqlCommand idCmd = new SqlCommand(userIDQuery, conn);
                        idCmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                        object empNumResult = idCmd.ExecuteScalar();
                        int? empNum = empNumResult as int?; // Nullable int

                        if (empNum.HasValue)
                        {
                            // Store Employee Number in Session
                            Session["Emp_Num"] = empNum.Value;
                            Session["Username"] = txtUsername.Text;

                            Response.Write("<script>alert('Successfully Logged-in')</script>");
                            Response.Redirect("administrator.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Incorrect password entered')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Username Entered')</script>");
                }
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}