<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrationForm.aspx.cs" Inherits="registrationForm" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account Registration</title>
    <link rel="stylesheet" type="text/css" href="StyleRegistrationForm.css"/>
    
</head>
<body>


    <div class ="login-box">
        <img src="Images/SafeMeLogov4.png" class="browse" />
        <h1>Register a New Account</h1>

        <form id="form" runat="server">
            <p id="fullNameInput">Full name</p>
            <asp:TextBox ID="fName" placeholder="Enter Your Full Name" runat="server"></asp:TextBox>
            
            <p id="countryInput">Country</p>
            <asp:TextBox ID="country" placeholder="Your Living Country" runat="server"></asp:TextBox>

            <p id="phoneInput">Phone Number</p>
            <asp:TextBox ID="phone" placeholder="Enter Your Phone Number" runat="server"></asp:TextBox>
                        
            <p id="emailInput">Email ID</p>
            <asp:TextBox ID="email" placeholder="Enter Your Email" runat="server"></asp:TextBox>
            
            <p id="passwordInput">Password</p>
            <asp:TextBox ID="password" TextMode="Password" placeholder="Enter a new Password" runat="server"></asp:TextBox>

            <p id="confirmPasswordInput">Confirm Password</p>
            <asp:TextBox ID="confirmPassword" TextMode="Password" placeholder="Confirm Your Password" runat="server"></asp:TextBox>
            
            <asp:Button ID="register" runat="server" Text="Register Here" OnClick="register_Click" />
               
        </form>

    </div>
 
</body>
</html>
