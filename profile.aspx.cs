using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            HttpCookie LoginCookie = Request.Cookies.Get("Credentials");
            string currentUserEmail = LoginCookie["CurrentUserEmail"].ToString();

            string SessionloginEmail = string.Empty;
            SessionloginEmail = Convert.ToString(Session["UserCurrentEmail"]);

            if (SessionloginEmail != currentUserEmail)
            {
                Response.Redirect("login.aspx");
            }
            SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select * from memberRegistration where email=@currentUserEmail", conn);

                cmd.Parameters.Add(new SqlParameter("@currentUserEmail", currentUserEmail));

                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                TextBoxFullName.Text = reader[1].ToString();
                TextBoxCountry1.Text = reader[2].ToString();
                TextBoxPhone.Text = reader[3].ToString();
                TextBoxEmail.Text = reader[4].ToString();
                TextBoxPassword.Text = reader[5].ToString();
            }
        }

    }

    protected void Edit_Click(object sender, EventArgs e)
    {

        Response.Redirect("Editprofile.aspx");
    }


    protected void historyButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("history.aspx");
    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void usersButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("users.aspx");
    }

    protected void aboutButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("about.aspx");
    }

    protected void contactButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactUs.aspx");
    }



    protected void ButtonEdit_Click(object sender, EventArgs e)
    {
        
            HttpCookie LoginCookie = Request.Cookies.Get("Credentials");
            string currentUserEmail = LoginCookie["CurrentUserEmail"].ToString();
        

            SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
            conn.Open();
            using (conn)
            {
                String localName = TextBoxFullName.Text;
                String localCountry = TextBoxCountry1.Text;
                String localPhone = TextBoxPhone.Text;
                //String localEmail = TextBoxEmail.Text;
                String localPassword = TextBoxPassword.Text;

                SqlCommand cmd = new SqlCommand("UPDATE memberRegistration SET fullName=@fullName, country=@country, phone=@phone, password=@password WHERE email=@currentUserEmail", conn);

                cmd.Parameters.Add(new SqlParameter("@fullName", localName));
                cmd.Parameters.Add(new SqlParameter("@country", localCountry));
                cmd.Parameters.Add(new SqlParameter("@phone", localPhone));
                //cmd.Parameters.Add(new SqlParameter("@email", localEmail));
                cmd.Parameters.Add(new SqlParameter("@password", localPassword));
                cmd.Parameters.Add(new SqlParameter("@currentUserEmail", currentUserEmail));
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("home.aspx");
        
    }


}