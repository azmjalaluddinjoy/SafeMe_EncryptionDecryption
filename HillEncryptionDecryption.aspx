<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HillEncryptionDecryption.aspx.cs" Inherits="HillEncryptionDecryption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Safe Me</title>
    <link rel="stylesheet" href="Icon/Menu-icon-black.png" />
    <link rel="stylesheet" href="icon/css/fontello.css" />
    <link rel="stylesheet" href="Style Home Page.css" />
    
    <style type="text/css">
        .auto-style4 {}
        .auto-style6 {
            height: 22px;
        }
        #TextArea1 {
            width: 525px;
            height: 147px;
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
                         <asp:Button Class="navmenu" ID="profileButton" runat="server" Text="Profile" OnClick="profileButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="historyButton" runat="server" Text="History" OnClick="historyButton_Click"/>
                     <li>
                         <asp:Button Class="navmenu" ID="usersButton" runat="server" Text="Users" OnClick="usersButton_Click"/>
                     <li>
                         <asp:Button Class="navmenu" ID="aboutButton" runat="server" Text="About" OnClick="aboutButton_Click"/>
                     <li>
                         <asp:Button Class="navmenu" ID="contactButton" runat="server" Text="Contact" OnClick="contactButton_Click"/>
                     <li>
                       </ul>
                 <p>
                     &nbsp;</p>
                 
                 
                          <div class="mini-image">
                     <img src="Images/SmartCity03.jpg" alt="Alternate Text" />
                 </div>
             </nav>    


            
               
              <table class="datashowCryptograph" style="width:57%;">
                 <tr>
                     <td class="newdata" colspan="2">
                         <asp:Label ID="Label1" runat="server" Text="Hill Cipher Encryption/Decryption"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="newdata" colspan="2">
                         <asp:TextBox ID="TextInput" TextMode="multiline" placeholder="Input your CipherText / PlainText to Encrypt or Decrypt" runat="server" Height="140px" style="margin-left: 0px" Width="543px"></asp:TextBox>
                 </td>
                 </tr>
                 <tr>
                     <td class="auto-style6">
                         <asp:Button ID="ButtonEncrypt" class="navmenu" runat="server" Text="Encrypt" />
                     </td>
                     <td class="auto-style6">
                         <asp:Button ID="ButtonDecrypt" class="navmenu" runat="server" Text="Decrypt"/>
                     </td>
                 </tr>
                 <tr>
                     <td class="newdata" colspan="2">
                         <asp:TextBox ID="TextBoxOutput" TextMode="multiline" placeholder="Output will be shown here" runat="server" Height="140px" style="margin-left: 0px" Width="543px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style4" colspan="2">
                         <asp:Button ID="ceaserEmail" class="navmenu" runat="server" Text="Send to Email" />
                     </td>
                 </tr>
             </table>

             
         </div>
    </form>

    </main>
   
</body>
</html>

