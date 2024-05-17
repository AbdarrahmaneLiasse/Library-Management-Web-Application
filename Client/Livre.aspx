<%@ Page Theme="livre" Language="C#" AutoEventWireup="true" CodeBehind="Livre.aspx.cs" Inherits="WebApplication1.Client.Livre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
                    <li><a href=""><asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Contact</asp:LinkButton></a></li>

                </ul>
            </div>
            <div id="button">
                    <asp:LinkButton ID="LinkButton3" CssClass="a" runat="server" OnClick="LinkButton3_Click1">Se déconnecter</asp:LinkButton>    
            </div>
        </div>
      </header>
      <main>
        <div id="book">
             <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                  <ItemTemplate>
            <div id="image"><asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# Eval("photo") %>'></asp:Image></div>
            <div id="information">
                <div id="titre">
                    <p runat="server"><asp:Label ID="Label1" runat="server" Text='<%# Eval("titre") %>'></asp:Label></p>
                </div>
                <div id="Auteur">
                    <p id="auteur" runat="server"><asp:Label ID="Label2" runat="server" Text='<%# Eval("auteur") %>'></asp:Label></p>
                </div>
                <div id="prix">
                    <p runat="server"><asp:Label ID="Label3" runat="server" Text='<%# Eval("prix") %>'></asp:Label></p>
                </div>
                <div id="description">
                    <p runat="server"><asp:Label ID="Label4" runat="server" Text='<%# Eval("descrip") %>'></asp:Label></p>
                </div>
                <div id="QTE">
                   <asp:Label ID="Label5" runat="server" Text="Label">Quantité: </asp:Label> <asp:TextBox ID="quantite" CssClass="quantite" runat="server"></asp:TextBox>
                </div>
                <div id="qteandaddtopanier">
                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="input" OnClick="LinkButton4_Click1">Ajouter au panier</asp:LinkButton>
        </div>
   </div>      

                  </ItemTemplate>

                  <LayoutTemplate>
                      <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                  </LayoutTemplate>

             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication1.Properties.Settings.cnx %>" SelectCommand="SELECT * FROM [livre] WHERE ([titre] = @titre)">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="titre" QueryStringField="NL" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
        </div>
      </main>
    </div>
    </form>
</body>
</html>

