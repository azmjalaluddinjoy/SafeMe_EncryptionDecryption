using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactProfile : System.Web.UI.Page
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
}