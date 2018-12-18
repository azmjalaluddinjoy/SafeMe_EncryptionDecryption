<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Safe Me</title>
    <link rel="stylesheet" href="Icon/Menu-icon-black.png" />
    <link rel="stylesheet" href="icon/css/fontello.css" />
    <link rel="stylesheet" href="Style Home Page.css" />
    
</head>
<body>
    <main>
         <form id="form1" runat="server">
         <div class="content-all">
             <header></header>
             <input type="checkbox" id ="check" />

             <label>Menu</label>

             <h2>Safe Me (Encryption Decryption Tool)</h2>

             <nav class="menu">
                 <ul>
                   
                     <li> 
                         <asp:Button Class="navmenu active" ID="homeButton" runat="server" Text="Home" />
                     <li >
                         <asp:Button class="navmenu" ID="profileButton" runat="server" Text="Profile" OnClick="profileButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="historyButton" runat="server" Text="History" OnClick="historyButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="usersButton" runat="server" Text="Users" OnClick="usersButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="aboutButton" runat="server" Text="About" OnClick="aboutButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="contactButton" runat="server" Text="Contact" OnClick="contactButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="logOutButton" runat="server" Text="Logout" OnClick="logOutButton_Click"/>
                     <li>
                     


                 </ul>
                 <p>
                     &nbsp;</p>
                 
                 
                          <div class="mini-image">
                     <img src="Images/SmartCity03.jpg" alt="Alternate Text" />
                 </div>

             </nav>   
             <div class="box2"> 
             <div class="box1">
                
               <a href="CeaserEncryptionDecryption.aspx"><img src="Images/CeaserCipher.png" /></a>
           </div>

              <div class="box1">
               <a href="HillEncryptionDecryption.aspx"><img src="Images/Hill.png" /></a>
           </div>

            <div class="box1">
               <a href="CeaserEncryptionDecryption.aspx"><img src="Images/Playfair.png" /></a>
           </div>
            
            <div class="box1">
               <a href="CeaserEncryptionDecryption.aspx"><img src="Images/Vernam.png" /></a>
           </div>

             <div class="box1">
               <a href="CeaserEncryptionDecryption.aspx"><img src="Images/Transposition.png" /></a>
           </div>

             <div class="box1">
               <a href="CeaserEncryptionDecryption.aspx"><img src="Images/more.png" /></a>
           </div>
             </div>
         </div>
    </form>

    </main>
   
</body>
</html>

