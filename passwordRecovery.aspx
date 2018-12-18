<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordRecovery.aspx.cs" Inherits="passwordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recover Password</title>
    <link rel="stylesheet" type="text/css" href="Style Login Page.css"/>


</head>
<body>
   

    <div class ="login-box">
        <img src="Icon/askforForgotPass.png" class="browseImage"/>
        <h1>Recover Your Password Here</h1>

        <form id="form" runat="server">
            <p>Registered Email ID</p>
            <asp:TextBox ID="emailTextbox" placeholder="Email which have been registered" runat="server"></asp:TextBox>
&nbsp;
            
            <asp:Button ID="sendMail" runat="server" Text="Send Password" OnClick="sendMail_Click"/>



           </form>




    </div>
   
</body>
</html>