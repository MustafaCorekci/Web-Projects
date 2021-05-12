<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumGuncelle.aspx.cs" Inherits="DiziYorum.Admin.yorumGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <form runat="server" class="form-group">

        <asp:Label ID="Label1" runat="server" Text="Blog Başlık"></asp:Label>
        <asp:TextBox ID="txtBlogBaslik" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Kullanıcı"></asp:Label>
        <asp:TextBox ID="txtKullanıcı" CssClass="form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Yorum İçerik"></asp:Label>
        <asp:TextBox ID="txtYorumIcerik" CssClass="form-control" TextMode="MultiLine" Height="150" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnKaydet" CssClass="btn btn-success" runat="server" OnClick="btnKaydet_Click" Text="Kaydet" />

    </form>

</asp:Content>
