<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="istatistikler.aspx.cs" Inherits="DiziYorum.Admin.istatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
    <html lang="zxx">
    <head>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
               function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //custom-theme -->
        <link href="/web/css linq/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web/css linq/component.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web/css linq/export.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web/css linq/style_grid.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/web/css linq/style.css" rel="stylesheet" type="text/css" media="all" />

        <!-- font-awesome-icons -->
        <link href="/web3/css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>
    <body>
        <!-- banner -->
        <div class="clearfix"></div>

        <ul class="ca-menu">
            <li>
                <a href="#">
                    <i class="fa fa-pie-chart" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main">
                            <asp:Label ID="lblBlogSayisi" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub">Toplam Blog Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="lblYorumSayisi" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub one">Toplam Yorum Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-money" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main two">
                            <asp:Label ID="lblFilmSayisi" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub two">Film Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-apple" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main three">
                            <asp:Label ID="lblDiziSayisi" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub three">Dizi Sayısı</h3>
                    </div>
                </a>
            </li>
        </ul>
        <ul class="ca-menu">
            <li>
                <a href="#">
                    <i class="fa fa-list" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main">
                            <asp:Label ID="lblAnimasyonSayisi" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub">Animasyon Sayısı </h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-language" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="lblFazlaYorumluBlog" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub one">En Fazla Yorumlu Blog</h3>
                    </div>
                </a>
            </li>
        </ul>
    </body>
    </html>

</asp:Content>
