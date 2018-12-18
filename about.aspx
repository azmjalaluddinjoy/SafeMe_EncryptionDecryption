<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

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
                         <asp:Button Class="navmenu" ID="profileButton" runat="server" Text="Profile" OnClick="profileButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="historyButton" runat="server" Text="History" OnClick="historyButton_Click" />
                     <li>
                         <asp:Button Class="navmenu" ID="usersButton" runat="server" Text="Users" OnClick="usersButton_Click" />
                     <li>
                         <asp:Button Class="navmenu active" ID="aboutButton" runat="server" Text="About" />
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
                 <h1>What is encryption and why is it important?</h1>
                 <p class="para1"> <strong>Encryption,</strong> is the process of changing information in such a way as to make it unreadable by anyone except those possessing special knowledge (usually referred to as a "key") that allows them to change the information back to its original, readable form.

Encryption is important because it allows you to securely protect data that you don't want anyone else to have access to. Businesses use it to protect corporate secrets, governments use it to secure classified information, and many individuals use it to protect personal information to guard against things like identity theft.

Espionage uses encryption to securely protect folder contents, which could contain emails, chat histories, tax information, credit card numbers, or any other sensitive information. This way, even if your comptuer is stolen that data is safe. </p>
                 <img src="Images/EncryptionDecryption02.jpg" />


                 <h1>3 reasons why encryption matters</h1>    
                 <p> <strong>1. Internet privacy concerns are real</strong><br />
                  Encryption helps protect privacy by turning personal information into “for your eyes only” messages intended only for the parties that need them — and no one else. You should make sure that your emails are being sent over an encrypted connection, or that you are encrypting each message. Most email clients come with the option for encryption in the settings menu, and if you check your email with a web browser, take a moment to ensure that SSL encryption is available.
<br /><br /><strong>2. Hacking is big business</strong><br />
Hackers aren’t just bored kids in a basement anymore. They’re big business, and in some cases, they’re multinational outfits. Large-scale data breaches that you may have heard about in the news demonstrate that people are out to steal personal information to fill their pockets.
<br /><br /><strong>3. Regulations demand it </strong><br />
Healthcare providers are required by the Health Insurance Portability and Accountability Act (HIPAA) to implement security features that protect patients’ sensitive health information. Institutions of higher learning must take similar steps under the Family Education Rights and Privacy Act (FERPA), while retailers must contend with the Fair Credit Practices Act (FCPA) and similar laws. Encryption helps businesses stay compliant as well as helps protect the valuable data of their customers. </p>
                 <img src="Images/EncryptionDecryption05.jpg" />
                 <h1>Equip Yourself</h1>
                 <p class="para3">

The good news is that security advancements are keeping pace with the advancement of information technology, and implementing encryption for patient data is no longer all that different from adding an extra lock to a filing cabinet.
<br /><br /><strong>Here are three concrete steps you can take to secure your patient data:</strong>
<br /><br /><strong>Full Disk Encryption</strong>
<br />This is the digital equivalent of putting a deadbolt on your records room. It’s also what you need to receive safe harbor from HIPAA fines in the event of a lost or stolen device containing sensitive data. It’s vital to ensure your encryption has FIPS-140-2 validation because encryptions solutions without it aren’t covered under safe harbor.
<br /><br /><strong>File Encryption</strong><br />
If full disk encryption is the deadbolt, file encryption is the secret code. This second line of defense will ensure that even if a hacker gains access to sensitive information, it’s very unlikely he’ll be able to read any of it.
It’s crucial that you have a system put in place to track where these files go and who has access to them. Without a predetermined way to keep track of them, digital copies can easily get lost in the system.
<br /><br /><strong>Mobile Security</strong><br />
Tablets and smartphones can make accessing and modifying patient information incredibly easy, but when it comes to security, they’re highly susceptible to hackers.
It’s crucial that there’s a central control of all medical mobile devices, as well as a way to verify that encryption is enabled on all remote technology. If a phone gets lost or stolen, you can verify that your data is safe. </p>
                 <img src="Images/EncryptionDecryption03.jpg" />
                 <h1>Achievement on Software Security Contest</h1>
                 <p class="para4"> Daffodil International University organized a 3 days long competition named <strong>Daffodil ICT Carnival</strong> on it's permanent. Prize Giving Ceremony at Daffodil International University, Ashulia Permanent Campus, Dhaka.<strong>Chariman sir Mr. Md Sabur Khan</strong>, Pro VC, CEO (Mohammad Nuruzzaman) of Daffodil Family, Head of CSE, Head of Software Engineering Department, Formar Chairman of BASIS & Others were present on stage for giving the award of being <strong>1st Runners up on Software Security Contest day 2</strong>(February 13, 2018) </p>
                 <img src="Images/Abu Zahid Md Jalal Uddin Joy.jpg" />


             </article>
    
         </div>
    </form>

    </main>
   
</body>
</html>
