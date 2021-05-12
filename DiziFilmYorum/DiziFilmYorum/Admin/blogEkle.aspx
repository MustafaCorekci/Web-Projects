<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="blogEkle.aspx.cs" Inherits="DiziYorum.Admin.yeniBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">

        <asp:Label ID="Label1" runat="server" Text="Blog Başlık"></asp:Label>
        <asp:TextBox ID="txtBlogBaslik" CssClass="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Blog Tarih"></asp:Label>
        <asp:TextBox ID="txtBlogTarih" CssClass="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Blog Görsel"></asp:Label>
        <asp:TextBox ID="txtBlogGorsel" CssClass="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Blog İçerik"></asp:Label>
        <asp:TextBox ID="txtBlogIcerik" CssClass="form-control" TextMode="MultiLine" Height="150" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Blog Tür"></asp:Label>
        <asp:DropDownList ID="listTur" CssClass="form-control" runat="server" DataTextField="turAd" DataValueField="turID"></asp:DropDownList>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Blog Kategori"></asp:Label>
        <asp:DropDownList ID="listKategori" CssClass="form-control" runat="server" DataTextField="kategoriAd" DataValueField="kategoriID"></asp:DropDownList>
        <br />
        <asp:Button ID="btnKaydet" CssClass="btn btn-success" runat="server" OnClick="btnKaydet_Click" Text="Kaydet" />

    </form>

</asp:Content>
