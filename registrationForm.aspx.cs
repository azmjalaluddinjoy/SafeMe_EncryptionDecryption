using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void register_Click(object sender, EventArgs e)
    {
        

        String localName = fName.Text;
        String localCountry = country.Text;
        String localPhone = phone.Text;
        String localEmail = email.Text;
        String localPassword = password.Text;
        String localConfPassword = confirmPassword.Text;

        int a = String.Compare(localPassword, localConfPassword);

        if (a==0 && localPassword!="")
        {
            SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
            conn.Open();
            using (conn)
            {
                //SqlCommand cmdEmail = new SqlCommand("SELECT email FROM memberRegistration", conn);

                SqlCommand cmd = new SqlCommand("INSERT INTO memberRegistration" + "(fullName, country, phone, email, password) VALUES" + "(@fullName, @country, @phone, @email, @password)", conn);

                //cmd.Parameters.Add(new SqlParameter("@id", localId));
                cmd.Parameters.Add(new SqlParameter("@fullName", localName));
                cmd.Parameters.Add(new SqlParameter("@country", localCountry));
                cmd.Parameters.Add(new SqlParameter("@phone", localPhone));
                cmd.Parameters.Add(new SqlParameter("@email", localEmail));
                cmd.Parameters.Add(new SqlParameter("@password", localPassword));

                //cmd.Parameters.Add(new SqlParameter("@password", confirmPassword));

                cmd.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }           
        }

        else
        {
           // string display = "Password didn't matched ! Please Check again your Password";
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            string disp = "Password didn't matched ! Please Check again your Password";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert('" + disp + "');", true);
        }



        
        
    }
}