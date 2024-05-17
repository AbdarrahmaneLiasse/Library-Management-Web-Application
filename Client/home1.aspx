<%@ Page Language="C#" Theme="homeAdmin" AutoEventWireup="true" CodeBehind="home1.aspx.cs" Inherits="WebApplication1.Admin.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 62px;
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
                    <li><a href="#">Accueil</a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Categorie</asp:LinkButton></a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Mes livres</asp:LinkButton></a></li>              
                    <li><a href=""><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton5_Click1">Panier</asp:LinkButton></a></li>
                </ul>
                 <p>
                     &nbsp;</p>
            </div>
           
     
            <div id="button">
                    <asp:LinkButton ID="LinkButton8" CssClass="a" runat="server" OnClick="LinkButton8_Click">Se déconnecter</asp:LinkButton>  
            </div>
        </div>
      </header>
      <main>
          <div id="Div1" style=" display: flex;justify-content: space-around;align-items: center;flex-direction: column;">
    <div style="margin-bottom:50px;"><h1>Tous les livres</h1></div>
        <div><asp:LinkButton CssClass="ajouterLivre" ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Ajouter un livre</asp:LinkButton></div></div>
          <div id="containetListeBooks">

              <asp:ListView ID="ListView1" runat="server"  DataSourceID="SqlDataSource1">
                  <ItemTemplate>
                      <table class=".table" style="float:left;margin-right: 60px;margin-bottom:55px;">
                          <tr>
                              <td style="text-align:center;"><asp:Image ID="imgbook" CssClass="img" runat="server" ImageUrl='<%# Eval("photo") %>'/>

                                  
</td>
                          </tr>
                          <tr style="margin:50px;">
                              <td style="text-align:center;font-weight:bold;" class="auto-style5"><asp:Label ID="Label2" runat="server" Text='<%# Eval("titre") %>' CssClass="titre" />

</td>
                          </tr>
                          <tr>
                              <td style="text-align:center" class="auto-style1"><asp:Label ID="Label1" runat="server" Text='<%# Eval("prix") %>' />

</td>
                          </tr>
                          <tr>
                              <td style="text-align:center" class="auto-style4"><asp:LinkButton ID="LinkButton4" runat="server" CssClass="AjouterAuPanier" OnClick="LinkButton4_Click">Afficher</asp:LinkButton></td>
                          </tr>
                        </table>   

                  </ItemTemplate>

                  <LayoutTemplate>
                      <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                  </LayoutTemplate>

              </asp:ListView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication1.Properties.Settings.cnx %>" SelectCommand="SELECT * FROM [livre]"></asp:SqlDataSource>
          </div>
      </main>
    </div>
    </form>
</body>
</html>
