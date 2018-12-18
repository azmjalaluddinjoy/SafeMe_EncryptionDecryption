using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class history : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select id, status, inputText, outputText from encryptionDecryptionHistory where email=@currentUserEmail", conn);
                cmd.Parameters.Add(new SqlParameter("@currentUserEmail", currentUserEmail));
                SqlDataReader reader = cmd.ExecuteReader();
                GridHistory.DataSource = reader;
                GridHistory.DataBind();
            }
        }
    }

    protected void homeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void profileButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
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

    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        //String id = TextBoxIdDelete.Text;
        int id = Convert.ToInt32(TextBoxIdDelete.Text);
        if (id <1 || id>10000)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert2", "alert('Invalid Serial ID');", true);
        }
        else
        {
            SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Delete from encryptionDecryptionHistory where id = @id", conn);
                cmd.Parameters.Add(new SqlParameter("@id", id));
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("home.aspx");
        }
        
        
    }
}