<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DiziYorum.Admin.Login" %>

<!--A Design by W3layouts
   Author: W3layout
   Author URL: http://w3layouts.com
   License: Creative Commons Attribution 3.0 Unported
   License URL: http://creativecommons.org/licenses/by/3.0/
   -->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Film & Dizi Yorum Login </title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Gaze Sign up & login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script>
        addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <!-- Meta tags -->
    <!--stylesheets-->
    <link href="/web2/css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//style sheet end here-->
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
</head>
<body>

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-149859901-1');
    </script>

    <script>
        window.ga = window.ga || function () { (ga.q = ga.q || []).push(arguments) }; ga.l = +new Date;
        ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
        ga('require', 'eventTracker');
        ga('require', 'outboundLinkTracker');
        ga('require', 'urlChangeTracker');
        ga('send', 'pageview');
    </script>
    <script async src='/js/autotrack.js'></script>

    <link rel="stylesheet" href="/images/demobar_w3_4thDec2019.css">
    <div class="mid-class">
        <!---728x90--->

        <div class="art-right-w3ls">
            <!---728x90--->
            <h2></h2>
            <form action="#" method="post" runat="server">
                <div class="main">
                    <div class="form-left-to-w3l">
                        <asp:TextBox ID="txtKullanici" placeholder="Kullanıcı" required="" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-left-to-w3l ">
                        <asp:TextBox ID="txtSifre" type="password" placeholder="Şifre" required="" runat="server"></asp:TextBox>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="left-side-forget">
                    <input type="checkbox" class="checked">
                    <span class="remenber-me">Beni Hatırla </span>
                </div>
                <div class="right-side-forget">
                    <a href="#" class="for">Şifremi Unuttum...?</a>
                </div>
                <div class="clear"></div>

                <br />
                <div class="btnn">  
                    <button id="btnGiris" type="submit" runat="server" onServerClick="btnGiris_click">Giriş Yap</button>
                </div>
            </form>
        </div>
        <!---728x90--->
        <div class="art-left-w3ls">
            <h1 class="header-w3ls">Film & Dizi Login Panel </h1>
        </div>
    </div>
    <footer class="bottem-wthree-footer">
        <p>
            © 2020 Tüm Hakları Saklıdır | Design by
                <a href="https://www.linkedin.com/in/mustafa-%C3%A7%C3%B6rekci-51a4381a5/" target="_blank">Mustafa Çörekci</a>
        </p>
    </footer>
</body>
</html>
