<%@ Page Theme="Home" Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="WebApplication1.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 41px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            height: 72px;
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
                    <li><a href=""><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Panier</asp:LinkButton></a></li>
                    <li><a href=""><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Contact</asp:LinkButton></a></li>
                </ul>
            </div>
           
     
            <div id="button">
                
                    <asp:LinkButton ID="LinkButton1" CssClass="a" runat="server" OnClick="LinkButton1_Click">Se déconnecter</asp:LinkButton>    
            </div>
        </div>
      </header>
      <main>
          <div style="margin-left:500px;">
            <h1 style="margin-top:80px;margin-bottom:-100px;">Tous les livres </h1>
          </div>
          <div id="containetListeBooks">

              <asp:ListView ID="ListView1" runat="server"  DataSourceID="SqlDataSource1">
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
                              <td style="text-align:center" class="auto-style6"><asp:Label ID="Label1" runat="server" Text='<%# Eval("prix") %>' />

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
