<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Safe Me</title>
    <link rel="stylesheet" href="Icon/Menu-icon-black.png" />
    <link rel="stylesheet" href="icon/css/fontello.css" />
    <link rel="stylesheet" href="Style Home Page.css" />
    
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 22px;
            width: 143px;
        }
        .auto-style3 {
            width: 143px;
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
                         <asp:Button Class="navmenu" ID="homeButton" runat="server" Text="Home" OnClick="homeButton_Click" />
                     <li>
                         <asp:Button Class="active" ID="profileButton" runat="server" Text="Profile" />
                     <li>
                         <asp:Button Class="navmenu" ID="historyButton" runat="server" Text="History" OnClick="historyButton_Click" />
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
                 
                 
                          <div class="mini-image">
                     <img src="Images/SmartCity03.jpg" alt="Alternate Text" />
                 </div>
             </nav>    



             
             
             <table class="datashow" style="width:52%;" id="tableProfile">
                 <tr>
                     <td class="newdata1">
                         <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                     </td>
                     <td class="newdata">
                         <asp:TextBox ID="TextBoxFullName" runat="server" style="margin-left: 0px" Width="356px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="newdata1">
                         <asp:Label ID="Label2" runat="server" Text="Living Country"></asp:Label>
                     </td>
                     <td class="newdata">
                         <asp:TextBox ID="TextBoxCountry1" runat="server" style="margin-left: 0px" Width="356px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="newdata1">
                         <asp:Label ID="Label3" runat="server" Text="Phone Number"></asp:Label>
                     </td>
                     <td class="newdata">
                         <asp:TextBox ID="TextBoxPhone" runat="server" style="margin-left: 0px" Width="356px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="newdata1">
                         <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
                     </td>
                     <td class="newdata">
                         <asp:TextBox ID="TextBoxEmail" runat="server" style="margin-left: 0px" Width="356px" ReadOnly="True"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="newdata1">
                         <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                     </td>
                     <td class="newdata">
                         <asp:TextBox ID="TextBoxPassword" type="password" class="idbox" runat="server" style="margin-left: 0px" Width="356px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style3">
                         &nbsp;</td>
                     <td>
                         <asp:Button ID="ButtonEdit" Class="navmenu" runat="server" Text="Edit &amp; Save" OnClick="ButtonEdit_Click" />
                     </td>
                 </tr>
             </table>



             
             
         </div>
    </form>

    </main>
   
</body>
</html>

