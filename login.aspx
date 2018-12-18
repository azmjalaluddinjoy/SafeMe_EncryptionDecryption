<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<script runat="server">


</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Account</title>
    <link rel="stylesheet" type="text/css" href="Style Login Page.css"/>
    
</head>
<body>
   

    <div class ="login-box">
        <img src="Images/SafeMeLogov4.png" class="browse" />
        <h1>Login Here</h1>

        <form id="form" runat="server">
            <p>Email ID</p>
            <asp:TextBox ID="emailTextbox" placeholder="Enter Registered Email" runat="server"></asp:TextBox>
&nbsp;
            <p>Password</p>
            <asp:TextBox ID="passwordTextbox" TextMode="Password" placeholder="Enter your Password" runat="server"></asp:TextBox>


            <asp:Button ID="Buttonlogin" runat="server" Text="Login" OnClick="login_Click" />

            <a href="passwordRecovery.aspx" id="forgotPassword">Forget Password</a>
        
            <asp:Button ID="create" runat="server" Text="Create account" OnClick="create_Click" />

           </form>

           





    </div>
   
</body>
</html>
