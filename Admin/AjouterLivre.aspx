<%@ Page Theme="AddBook" Language="C#" AutoEventWireup="true" CodeBehind="AjouterLivre.aspx.cs" Inherits="WebApplication1.Admin.AjouterLivre" %>

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
                         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Accueil</asp:LinkButton></a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Categorie</asp:LinkButton></a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Mes livres</asp:LinkButton></a></li>              
                    <li><a href=""><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Panier</asp:LinkButton></a></li>
               </ul>
           </div>
          
    
           <div id="button">
                   <asp:LinkButton ID="LinkButton3" CssClass="a" runat="server" OnClick="LinkButton3_Click">Se déconnecter</asp:LinkButton>    
           </div>
       </div>
    </header>
    <main>
        <div id="containermain">  

            <div id="photo">
                <label for="f1">Photo:</label>
                <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
            </div>

            <div id="titreandauteur">
                <input type="text" id="titre" runat="server" placeholder="Titre">
                <input type="text" id="auteur" runat="server" placeholder="Auteur">
            </div>

            <div id="prixandshipment">
                <input type="text" id="prix" runat="server" placeholder="Prix">
                <input type="text" id="prixlivraison" runat="server" placeholder="Prix de livraison">
            </div>

            <div id="dropdownlist">
                    <asp:DropDownList ID="DropDownList1" CssClass="dropdownlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="nomtheme" DataValueField="numtheme">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication1.Properties.Settings.cnx %>" SelectCommand="SELECT * FROM [theme]"></asp:SqlDataSource>
            </div>

            <div id="desc">
                <textarea name="" runat="server" id="Textarea1" cols="54" rows="8" placeholder="Description"></textarea>
            </div>

            <div id="ajouter">
                <asp:LinkButton ID="LinkButton4" CssClass="a" runat="server" OnClick="LinkButton4_Click">Ajouter</asp:LinkButton>
            </div>
        </div>        

    </main>
    </div>
    </form>
</body>
</html>
