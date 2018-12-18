using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    //public object Logger { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserCurrentEmail"] = "none";

    }

    protected void login_Click(object sender, EventArgs e)
    {

        try
        {
            String loginEmail = emailTextbox.Text;
            String loginPassword = passwordTextbox.Text;
            if (loginEmail != "" || loginPassword != "")
            {
                SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
                conn.Open();
                using (conn)
                {
                    //SqlCommand cmdEmail = new SqlCommand("SELECT email FROM memberRegistration", conn);
                    SqlCommand cmd = new SqlCommand("Select * from memberRegistration where email=@loginEmail", conn);
                    cmd.Parameters.Add(new SqlParameter("@loginEmail", loginEmail));
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();

                    if (reader[4].ToString() == loginEmail && reader[5].ToString() == loginPassword)
                    {
                        HttpCookie cookie = new HttpCookie("Credentials");
                        cookie.Values.Add("CurrentUserEmail", loginEmail);
                        //cookie.Expires = DateTime.Now.AddDays(1);
                        HttpContext.Current.Response.AppendCookie(cookie);
                        Session["UserCurrentEmail"] = loginEmail;

                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        string disp = "Wrong Password Input !!! Please check your password again";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert('" + disp + "');", true);
                    }

                }
            }
            else
            {
                string disp = "Invalid Input";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert('" + disp + "');", true);

            }
        }
        catch (System.IO.IOException ioe)
        {
            //Server.Transfer("IOErrorPage.aspx", true);

            ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert('Input Exception Occurs');", true);
        }
        catch (Exception excep)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert2", "alert('Email you have inserted is invalid, Please check again !');", true);

        }




    }

    protected void create_Click(object sender, EventArgs e)
    {
        Response.Redirect("registrationForm.aspx");
    }


}