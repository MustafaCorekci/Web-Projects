<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="bloglar.aspx.cs" Inherits="DiziYorum.Admin.bloglar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Başlık</th>
            <th>Tarih</th>
            <th>Tür</th>
            <th>Kategori</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <tr>
            <asp:Repeater runat="server" ID="Repeater1">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("blogID") %></td>
                        <td><%# Eval("blogBaslik") %></td>
                        <td><%# Eval("blogTarih") %></td>
                        <td><%# Eval("turAd") %></td>
                        <td><%# Eval("kategoriAd") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-danger" NavigateUrl='<%# "blogSil.aspx?blogID=" +  Eval("blogID") %>'>Sil</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" class="btn btn-warning" NavigateUrl='<%# "blogGuncelle.aspx?blogID=" +  Eval("blogID") %>'>Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>
    <a href="blogEkle.aspx" class="btn btn-info">Yeni Blog Ekle</a>

</asp:Content>
