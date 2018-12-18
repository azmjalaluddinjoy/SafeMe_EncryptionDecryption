<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="history" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Safe Me</title>
    <link rel="stylesheet" href="Icon/Menu-icon-black.png" />
    <link rel="stylesheet" href="icon/css/fontello.css" />
    <link rel="stylesheet" href="Style Home Page.css" />
    
    <style type="text/css">
        .auto-style1 {
            width: 292px;
            height: 30px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
    
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
                         <asp:Button Class="navmenu active" ID="historyButton" runat="server" Text="History"/>
                     <li>
                         <asp:Button Class="navmenu" ID="usersButton" runat="server" Text="Users" OnClick="usersButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="aboutButton" runat="server" Text="About" OnClick="aboutButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="contactButton" runat="server" Text="Contact" OnClick="contactButton_Click" />
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
                 <h1>Your Activity Log</h1>
                 <table style="width:86%;">
                     <tr>
                         <td class="newdata">
                             <asp:TextBox ID="TextBoxIdDelete" placeholder="Enter an id to delete your history" runat="server" Width="343px" Height="25px"></asp:TextBox>
                         </td>
                         <td class="newdata">
                             <asp:Button ID="ButtonDelete" Class="navmenu" runat="server" style="margin-left: 6px" Text="Delete" Width="197px" OnClick="ButtonDelete_Click" />
                         </td>
                     </tr>
                     </table>
             </article>

             <asp:GridView ID="GridHistory" Class="datashowHistory" runat="server"></asp:GridView>
    
         </div>
    </form>

    </main>
   
</body>
</html>
