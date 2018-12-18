using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            SqlCommand cmd = new SqlCommand("Select fullName, country from memberRegistration", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            GridViewUsers.DataSource = reader;
            GridViewUsers.DataBind();

            //SqlDataReader reader = cmd.ExecuteReader();
            //reader.Read();
            //TextBoxFullName.Text = reader[1].ToString();
            //TextBoxCountry1.Text = reader[2].ToString();
            //TextBoxPhone.Text = reader[3].ToString();
            //TextBoxEmail.Text = reader[4].ToString();
            //TextBoxPassword.Text = reader[5].ToString();

        }
        //Response.Redirect("home.aspx");

    }
        

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void profileButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }

    protected void historyButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("history.aspx");
    }
    protected void aboutButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("about.aspx");
    }
    protected void contactButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactUs.aspx");
    }
}