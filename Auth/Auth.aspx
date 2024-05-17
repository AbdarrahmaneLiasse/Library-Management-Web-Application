<%@ Page Theme="Auth" Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="WebApplication1.Auth.Auth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="Div1" class="container" runat="server">
        <div id="Div2" class="forms" runat="server">
          <div id="Div3" class="form login" runat="server">
            <span id="Span1" class="title" runat="server">Login</span>
  
            
              <div id="Div4" class="input-field" runat="server">
                <input id="log" runat="server" placeholder="Enter your email" />
                <i class="uil uil-envelope icon"></i>
              </div>
              <div class="input-field">
                <input
                    id="pass1"
                    runat="server"
                  type="password"
                  class="password"
                  placeholder="Enter your password"
                  
                />
            
             </div>
  
              
  
              <div class="input-field button">
<asp:Button CssClass="button" ID="Button1" runat="server" Text="Se connecter" OnClick="Button1_Click" />              
                  <br />
              
              </div>
  
            <div class="login-signup">
              <span class="text"
                >Not a member?
                <a href="#" class="text signup-link">S'inscrire</a>
              </span>
            </div>
          </div>
  
          <!-- Registration Form -->
          <div class="form signup">
            <span class="title">Registration</span>
  
            
              <div class="input-field">
                <input type="text" id="nom" runat="server" placeholder="Entrer votre nom" />
              </div>
              <div class="input-field">
                <input type="text" id="login" runat="server" placeholder="Entrer votre login"/>
              </div>
              <div class="input-field">
                <input
                  type="password"
                  class="password"
                    id="pw"
                    runat="server"
                  placeholder="Entrer un mot de passe"
                  
                />
              </div>
              <div class="input-field">
                <input
                    id="ville" runat="server"
                  type="text"
                  class="password"
                  placeholder="Entrer votre ville"
                  
                />
  
              </div>
              <div class="input-field">
                <input
                    id="adresse" runat="server"
                  type="text"
                  class="password"
                  placeholder="Entrer votre adresse"
                  
                />

              </div>
              <div class="input-field">
                <input
                    id="tel" runat="server"
                  type="text"
                  class="password"
                  placeholder="Entrer votre téléphone"
                  
                />

              </div>
  
              <div class="input-field button">
                    <asp:Button ID="Button2" Cssclass="button" runat="server" Text="S'inscrire" OnClick="Button2_Click" />
              </div>
            
            <div class="login-signup">
              <span class="text"
                >vous etes un membre.
                <a href="#" class="text login-link">Se connecter</a>
              </span>
            </div>
          </div>




       


        </div>
      </div>
    </div>
    </form>
              <script src="1.js"> </script>

</body>
</html>
