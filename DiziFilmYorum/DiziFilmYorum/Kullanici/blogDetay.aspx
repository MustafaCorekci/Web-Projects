<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici/kullanici.Master" AutoEventWireup="true" CodeBehind="blogDetay.aspx.cs" Inherits="DiziYorum.Kullanici.blogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../web/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="../web/css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <div class="single">
        <div class="container">
            <div class="col-md-8 single-main">
                <div class="single-grid">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <img src=" <%# Eval("blogGorsel") %> " alt="" style="height: 300px; width: 725px; margin-bottom: 20px" />
                            <h3><%# Eval("blogBaslik") %> </h3>
                            <p>
                                <%# Eval("blogIcerik") %>
                            </p>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul class="comment-list">
                            <h5 class="post-author_head"><%#Eval("kullaniciAd") %> </h5>
                            <li>
                                <img src="../web/images/avatar.png" class="img-responsive" alt="">
                                <div class="desc">
                                    <p><%#Eval("yorumIcerik") %> </p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="content-form">
                    <h3>Bir Yorum Yazın..</h3>
                    <form runat="server">
                        <asp:TextBox ID="txtKullanici" placeholder="Kullanıcı Adınız" CssClass="form-control" runat="server" required=""></asp:TextBox>
                        <asp:TextBox ID="txtMail" placeholder="Mail Adresiniz" CssClass="form-control" runat="server" required=""></asp:TextBox>
                        <asp:TextBox ID="txtYorum" placeholder="Yorumunuz" TextMode="MultiLine" CssClass="form-control" Height="200" runat="server" required=""></asp:TextBox>
                        <asp:Button ID="btnGonder" CssClass="form-control" runat="server" Text="Yorum Yap" OnClick="btnGonder_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
