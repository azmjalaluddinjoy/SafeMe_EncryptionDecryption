using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CeaserEncryptionDecryption : System.Web.UI.Page
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

    protected void ButtonEncrypt_Click(object sender, EventArgs e)
    {
        String plainText = TextInput.Text;
        int asciiValue = 0;
        char aCharecter;

        char[] myArray = new char[plainText.Length];
        String cipherText = null;
        for (int i = 0; i < (plainText.Length); i++)
        {
            aCharecter = plainText[i];
            asciiValue = (int)aCharecter;
            if (asciiValue >= 65 && asciiValue <= 90)
            {
                asciiValue = (int)aCharecter;
                asciiValue = asciiValue - 65;
                asciiValue = asciiValue + 3;
                asciiValue = asciiValue % 26;
                asciiValue = asciiValue + 65;
                aCharecter = (char)asciiValue;
                myArray[i] = aCharecter;


            }
            else if (asciiValue >= 97 && asciiValue <= 122)
            {
                asciiValue = (int)aCharecter;
                asciiValue = asciiValue - 97;
                asciiValue = asciiValue + 3;
                asciiValue = asciiValue % 26;
                asciiValue = asciiValue + 97;
                aCharecter = (char)asciiValue;
                myArray[i] = aCharecter;
            }
            else {
                myArray[i] = aCharecter;
            }
        }
        cipherText = string.Join("", myArray);
        //return cipherText;
        TextBoxOutput.Text = cipherText;

        HttpCookie LoginCookie = Request.Cookies.Get("Credentials");
        string currentUserEmail = LoginCookie["CurrentUserEmail"].ToString();
        String status = "CeaserEncryption";
        SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
        conn.Open();
        using (conn)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO encryptionDecryptionHistory" + "(email, status, inputText, outputText) VALUES" + "(@email, @status, @input, @output)", conn);
            cmd.Parameters.Add(new SqlParameter("@email", currentUserEmail));
            cmd.Parameters.Add(new SqlParameter("@status", status));
            cmd.Parameters.Add(new SqlParameter("@input", plainText));
            cmd.Parameters.Add(new SqlParameter("@output", cipherText));
            cmd.ExecuteNonQuery();
        }
    }




    protected void ButtonDecrypt_Click(object sender, EventArgs e)
    {

        String plainText = TextInput.Text;
        int asciiValue = 0;
        char aCharecter;

        char[] myArray = new char[plainText.Length];
        String cipherText = null;
        for (int i = 0; i < (plainText.Length); i++)
        {
            aCharecter = plainText[i];
            asciiValue = (int)aCharecter;
            if (asciiValue >= 65 && asciiValue <= 90)
            {
                asciiValue = (int)aCharecter;
                asciiValue = asciiValue - 65;
                asciiValue = asciiValue - 3;
                asciiValue = asciiValue % 26;
                asciiValue = asciiValue + 65;
                aCharecter = (char)asciiValue;
                myArray[i] = aCharecter;


            }
            else if (asciiValue >= 97 && asciiValue <= 122)
            {
                asciiValue = (int)aCharecter;
                asciiValue = asciiValue - 97;
                asciiValue = asciiValue - 3;
                asciiValue = asciiValue % 26;
                asciiValue = asciiValue + 97;
                aCharecter = (char)asciiValue;
                myArray[i] = aCharecter;
            }
            else {
                myArray[i] = aCharecter;
            }
        }
        cipherText = string.Join("", myArray);
        //return cipherText;
        TextBoxOutput.Text = cipherText;

        HttpCookie LoginCookie = Request.Cookies.Get("Credentials");
        string currentUserEmail = LoginCookie["CurrentUserEmail"].ToString();
        String status = "CeaserDecryption";
        SqlConnection conn = new SqlConnection("Server=.;" + "Database= safeMeDb;" + "Integrated Security= true;");
        conn.Open();
        using (conn)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO encryptionDecryptionHistory" + "(email, status, inputText, outputText) VALUES" + "(@email, @status, @input, @output)", conn);
            cmd.Parameters.Add(new SqlParameter("@email", currentUserEmail));
            cmd.Parameters.Add(new SqlParameter("@status", status));
            cmd.Parameters.Add(new SqlParameter("@input", plainText));
            cmd.Parameters.Add(new SqlParameter("@output", cipherText));
            cmd.ExecuteNonQuery();
        }

    }
}