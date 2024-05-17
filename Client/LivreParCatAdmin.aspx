<%@ Page Language="C#" Theme="LivreparcatAdmin" AutoEventWireup="true" CodeBehind="LivreParCatAdmin.aspx.cs" Inherits="WebApplication1.Admin.LivreParCatAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 59px;
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
                    <li><a href=""><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Categorie</asp:LinkButton></a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Mes livres</asp:LinkButton></a></li>              
                    <li><a href=""><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Panier</asp:LinkButton></a></li>
                </ul>
            </div>
           
     
            <div id="button">
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="a" OnClick="LinkButton3_Click1">Se déconnecter</asp:LinkButton>    
            </div>
        </div>
      </header>
      <main>
          
           <div id="Div1" style=" display: flex; space-around;align-items: center;flex-direction: column;">
    <div style="margin-bottom:50px;"><h1 id="h1" runat="server"></h1></div>
<div></div>
    <div id="description"><p id="p" runat="server"></p></div>
</div>
          <div id="containetListeBooks">

              <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                  <ItemTemplate>
                      <table class=".table" style="float:left;margin-right: 60px;margin-bottom:55px; height: 126px;">
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
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication1.Properties.Settings.cnx %>" SelectCommand="SELECT livre.numlivre, livre.dateajout, livre.titre, livre.auteur, livre.descrip, livre.prix, livre.prixshipement, livre.photo, livre.numtheme FROM theme INNER JOIN livre ON theme.numtheme = livre.numtheme WHERE (theme.nomtheme = @nt)">
                  <SelectParameters>
                      <asp:QueryStringParameter Name="nt" QueryStringField="nc" />
                  </SelectParameters>
              </asp:SqlDataSource>
          </div>
      </main>
    </div>
    </form>
</body>
</html>
