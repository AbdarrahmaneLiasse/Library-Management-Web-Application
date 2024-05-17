<%@ Page Language="C#" Theme="catAdmin" AutoEventWireup="true" CodeBehind="CatAdmin.aspx.cs" Inherits="WebApplication1.Admin.Cat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 69px;
        }
    </style>
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
                    <li><a href="#">Catégorie</a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Mes livres</asp:LinkButton></a></li>              
                    <li><a href=""><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton5_Click1">Panier</asp:LinkButton></a></li>
                </ul>
            </div>
           
     
            <div id="button">
                    <asp:LinkButton ID="LinkButton2" CssClass="a" runat="server" OnClick="LinkButton2_Click">Se connecter</asp:LinkButton>    
            </div>
        </div>
      </header>
      <main>
        <div id="recherche">
            <div id="inputrecherche">
                 <div id="Div1" style=" display: flex;justify-content: space-around;align-items: center;flex-direction: column;">
    <div style="margin-bottom:50px;"><h1>Catégories</h1></div>
        <div><asp:LinkButton CssClass="ajouterCat" ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Ajouter une catégorie</asp:LinkButton></div></div>
            </div>
        </div>
        


          <div id="containetListeBooks"> 
              <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                  <table class="table" style="float:left;margin-right: 60px;margin-bottom:55px; height: 126px;">
                  <tr>
                      <td style="text-align:center;" class="auto-style2"><asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# Eval("photo") %>'></asp:Image></td>
                  </tr>
                  <tr>
                      <td style="text-align:center;" class="auto-style1"><asp:Label ID="Label1" runat="server" CssClass="NomTheme" Text='<%# Eval("nomtheme") %>'></asp:Label></td>
                  </tr>
                  <tr>
                      <td style="text-align:center;" class="auto-style2">
                          <asp:LinkButton ID="LinkButton4" CssClass="AfficherCat" runat="server" OnClick="LinkButton4_Click">Afficher</asp:LinkButton>
                      </td>
                  </tr>
                 </table>      
                </ItemTemplate>
                  <LayoutTemplate>
                      <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                  </LayoutTemplate>
              </asp:ListView>

              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication1.Properties.Settings.cnx %>" SelectCommand="SELECT * FROM [theme]"></asp:SqlDataSource>

          </div>

      </main>
    </div>
    </form>
</body>
</html>
