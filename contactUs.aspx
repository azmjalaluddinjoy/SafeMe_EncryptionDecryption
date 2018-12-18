<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

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

             <h2>Safe Me</h2>

             <nav class="menu">
                 <ul>
               
                     <li> 
                         <asp:Button Class="navmenu" ID="homeButton" runat="server" Text="Home" OnClick="homeButton_Click"/>
                     <li>
                         <asp:Button Class="navmenu" ID="profileButton" runat="server" Text="Profile" OnClick="profileButton_Click"/>
                     <li>
                         <asp:Button Class="navmenu" ID="historyButton" runat="server" Text="History" OnClick="historyButton_Click"/>
                     <li>
                         <asp:Button Class="navmenu" ID="usersButton" runat="server" Text="Users" OnClick="usersButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="aboutButton" runat="server" Text="About" OnClick="aboutButton_Click" />
                     <li>
                         <asp:Button Class="navmenu active" ID="contactButton" runat="server" Text="Contact"/>
                     <li>
                     
                 </ul>
                 <p>
                     &nbsp;</p>
                 <ul>
                     <li>

                     
                 </ul>
                 <div class="mini-image">
                     <img src="Images/SmartCity03.jpg" alt="Alternate Text" />
                 </div>

             </nav>    

  
             <article class="a-content">
                 <h1>Developer: <strong>A. Z. M. JALAL UDDIN JOY </strong></h1>
                 

                 <p class="para4"> Department of Software Engineering, Daffodil International University 
                      <br /><br /><strong>Email: </strong>joy.srijon@gmail.com
                 <br /><strong>Email: </strong>abu35-1611@diu.edu.bd<br />
                     <strong>Mobile: </strong>01733XXXX72
                 <br /><strong>Semester: </strong>07

                 </p>
                 <img class="imageContact" src="Images/JOY making ddddddddddddTie(Silver).jpg" />


             </article>
    
         </div>
    </form>

    </main>
   
</body>
</html>
