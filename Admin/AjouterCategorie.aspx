<%@ Page Theme="AddTheme" Language="C#" AutoEventWireup="true" CodeBehind="AjouterCategorie.aspx.cs" Inherits="WebApplication1.Admin.AjouterCategorie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <header>
        <div id="container">
            <div id="nav">
               <ul>
                   <li><a href="#">
                         <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click1">Accueil</asp:LinkButton></a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton2_Click">Categorie</asp:LinkButton></a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Mes livres</asp:LinkButton></a></li>              
                    <li><a href=""><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Panier</asp:LinkButton></a></li>
               </ul>
           </div>
          
    
           <div id="button">
                   <asp:LinkButton ID="LinkButton4" CssClass="a" runat="server" OnClick="LinkButton4_Click1">Se déconnecter</asp:LinkButton>  
           </div>
       </div>
    </header>
    <main>
        <div id="containermain">  

            <div id="photo">
                <label for="f1">Photo:</label>
                <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
            </div>

            <div id="nom">              
                  <input type="text" id="nom" runat="server" placeholder="Nom">
            </div>

            <div id="desc">
                <textarea name="" runat="server" id="desc" cols="45" rows="8" placeholder="Description"></textarea>
            </div>

            <div id="ajouter">
               <asp:LinkButton CssClass="a" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ajouter</asp:LinkButton>
            </div>
            
        </div>
    </main>
    </div>
    </form>
</body>
</html>
