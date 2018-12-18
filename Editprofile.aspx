<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

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
                         <asp:Button Class="navmenu" ID="homeButton" runat="server" Text="Home" OnClick="homeButton_Click" />
                     <li>
                         <asp:Button Class="active" ID="profileButton" runat="server" Text="Profile" />
                     <li>
                         <asp:Button Class="navmenu" ID="historyButton" runat="server" Text="History" />
                     <li>
                         <asp:Button Class="navmenu" ID="usersButton" runat="server" Text="Users" />
                     <li>
                         <asp:Button Class="navmenu" ID="aboutButton" runat="server" Text="About" />
                     <li>
                         <asp:Button Class="navmenu" ID="contactButton" runat="server" Text="Contact" />
                     <li>
                     


                 </ul>
                 <p>
                     &nbsp;</p>
                 
                 
                          <div class="mini-image">
                     <img src="Images/SmartCity03.jpg" alt="Alternate Text" />
                 </div>
             </nav>    
            
            
              
        <table class="datashow">
                  <tr>
                    <th class="newdata1">Full Name</th>
                  </tr>
                  <tr>
                      <td><input class="newdata2" id="name" type="text" value="Abu Zahid Md Jalal Uddin" /></td>
                  </tr>
                  <tr>
                    <th class="newdata1">Country</th>
                  </tr>
                  <tr>
                      <td><input class="newdata2" id="country" type="text" value="Bangladesh" /></td>
                  </tr>
                  <tr>
                    <th class="newdata1">Email</th>
                  </tr>
                  <tr>
                    <td><input class="newdata2" id="email" type="text" value="joy.srijon@gmail.com" /></td>
                  </tr>
                <tr>
                    <th class="newdata1">Phone</th>
                  </tr>
                  <tr>
                   <td><input class="newdata2" id="phone" type="text" value="01733600472" /></td>
                  </tr>
                 <tr>
                    <td class="newdata">
                        <asp:Button Class="navmenu" ID="Edit" runat="server" Text="Update" />

                    </td>
                  </tr>
            
                
               
               
                </table>
            
             
         </div>
    </form>
       
    </main>
   
</body>
</html>

