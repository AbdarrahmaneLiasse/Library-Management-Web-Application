<%@ Page Theme="Contact" Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div id="back">
     <a href=""><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><span><</span></asp:LinkButton></a>  Back
    <div>
        <asp:LinkButton ID="LinkButton2" CssClass="button" runat="server" OnClick="LinkButton2_Click">Se déconnecter</asp:LinkButton></div> 
   </div>


      <main>
        <div id="titre">
            <p>We are happy to hear from you</p>
        </div>
        <div id="NomEmail">
            <input type="text" name="" id="" placeholder="Nom">
            <input type="text" name="" id="Text1" placeholder="Email">
        </div>
        <div id="Message">
<textarea name="" id="Textarea1" cols="" rows="10" placeholder="Message"></textarea>        </div>
        <div id="button"><input type="button" id="Send" value="Send"></div>
      </main>
    </div>
    </form>
</body>
</html>
