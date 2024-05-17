<%@ Page Language="C#" Theme="Mes livres" AutoEventWireup="true" CodeBehind="Meslivres.aspx.cs" Inherits="WebApplication1.Client.Mes_livres" %>

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
                    <li><a href="#"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Categorie</asp:LinkButton></a></li>
                    <li><a href="#">Mes livres</a></li>              
                    <li><a href="#"><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Panier</asp:LinkButton></a></li>
                    <li><a href="#"><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Contact</asp:LinkButton></a></li>

               </ul>
           </div>
          
    
           <div id="button">
                   <asp:LinkButton ID="LinkButton3" CssClass="a" runat="server" OnClick="LinkButton3_Click">Se déconnecter</asp:LinkButton>    
           </div>
       </div>
    </header>
    <main>
        <div id="titre">
            <h1>Mes livres</h1>
        </div>
        <table>
            <tr>
                <th>Livre</th>
                <th>Quantité</th>
                <th>Prix</th>
            </tr>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
            <tr>
                <td>
               <div>
                    <asp:Image ID="imgbook" CssClass="img" runat="server" ImageUrl='<%# Eval("photo") %>'/>
                    <p><%# Eval("titre") %></p></div>
                </td>
                <td style="text-align:center ;">
                    
                        <span id="spanqte" ><%# Eval("qte") %></span>
                    
                </td>
                <td>
                    <div>
                      <asp:Label CssClass="label" ID="Label1" runat="server" Text='<%# Eval("prix") %>' />
                    </div>
                </td>
                
            </tr>
                  </ItemTemplate>
            </asp:ListView>
        </table><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication1.Properties.Settings.cnx %>" SelectCommand="SELECT livre.photo, livre.titre, panier.qte, livre.prix FROM livre INNER JOIN panier ON livre.numlivre = panier.numlivre INNER JOIN profil ON panier.numprofil = profil.numprofil WHERE (profil.loginc = @l ) and valid='oui'">
            <SelectParameters>
                <asp:SessionParameter Name="l" SessionField="login" />
            </SelectParameters>
        </asp:SqlDataSource>
</main>
    </div>
    </form>
</body>
</html>
