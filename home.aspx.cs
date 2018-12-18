using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
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

    }

    protected void profileButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }

    protected void historyButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("history.aspx");
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

    protected void logOutButton_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("login.aspx");
    }
}