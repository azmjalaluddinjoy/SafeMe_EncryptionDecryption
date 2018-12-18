<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestCase.aspx.cs" Inherits="TestCase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="joy" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />000000
        <br />
        <br />
    
    </div>
    </form>
    <style>
        #joy{
                background: #1c8adb;
                padding: 6px 100px;
                border-radius: 15px;
                font-size: 17px;
                color: #fff;
                border: none;
                cursor: pointer;
            }
        #joy:hover{
                background: #808080;
               
        }
    </style>
</body>
</html>
