<%@ Page Language="C#" Theme="panierAdmin" AutoEventWireup="true" CodeBehind="panierAdmin.aspx.cs" Inherits="WebApplication1.Client.panierAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 27px;
        }
        .auto-style2 {
            height: 24px;
            width: 58px;
        }
        .auto-style3 {
            width: 27px;
            height: 24px;
        }
        .auto-style4 {
            width: 58px;
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
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Accueil</asp:LinkButton></a></li>
                    <li><a href="#"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Categorie</asp:LinkButton></a></li>
                    <li><a href="#"><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Mes livres</asp:LinkButton></a></li>              
                    <li><a href="#">Panier</a></li>
               </ul>
           </div>
          
    
           <div id="button">
                   <asp:LinkButton ID="LinkButton5" CssClass="a" runat="server" OnClick="LinkButton5_Click">Se déconnecter</asp:LinkButton>   
           </div>
       </div>
    </header>
    <main>
        <div id="titre">
            <h1>Votre panier</h1>
        </div>
        <table>
            <tr>
                <th></th>
                <th>Livre</th>
                <th class="auto-style4">Quantité</th>
                <th class="auto-style1">Prix</th>
                <th></th>
            </tr>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
            <tr>
                 <td style="text-align:center ;">
                    
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("numlivre") %>'></asp:Label>
                </td>
                <td>
               <div>
                    <asp:Image ID="imgbook" CssClass="img" runat="server" ImageUrl='<%# Eval("photo") %>'/>
              <asp:Label ID="titre" runat="server" Text='<%# Eval("titre") %>'></asp:Label>     

               </div>
                </td>
                <td style="text-align:center ;">
                    
                        <span id="spanqte" ><%# Eval("qte") %></span>
                    
                </td>
                <td>
                    <div>
                      <asp:Label CssClass="label" ID="Label1" runat="server" Text='<%# Eval("prix") %>' />
                    </div>
                </td>
                <td style="text-align: center;">
                   <a href=""><asp:LinkButton CssClass="BTNSUPPRIMER" OnClick="BtnSuppr_Click" ID="BtnSuppr" runat="server">X</asp:LinkButton></a> 
                </td>
            </tr>
                  </ItemTemplate>
            </asp:ListView>
        </table>
    <div id="total">        
                <asp:LinkButton ID="LinkButton4" OnClick="LinkButton4_Click" runat="server">Valider la commande</asp:LinkButton>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebApplication1.Properties.Settings.cnx %>" SelectCommand="SELECT  livre.numlivre, livre.photo, livre.titre,panier.qte, livre.prix FROM livre INNER JOIN panier ON livre.numlivre = panier.numlivre INNER JOIN profil ON panier.numprofil = profil.numprofil WHERE (profil.loginc = @l) AND (panier.valid = 'non')">
            <SelectParameters>
                <asp:SessionParameter Name="l" SessionField="login" />
            </SelectParameters>
        </asp:SqlDataSource>
</main>
    </div>
    </form>
</body>
</html>
