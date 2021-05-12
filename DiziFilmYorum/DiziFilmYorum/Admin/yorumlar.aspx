<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="DiziYorum.Admin.yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Kullanıcı</th>
            <th>Blog</th>
            <th>İçerik</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <tr>
            <asp:Repeater runat="server" ID="Repeater1">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("yorumID") %></td>
                        <td><%# Eval("kullaniciAd") %></td>
                        <td><%# Eval("blogBaslik") %></td>
                        <td><%# Eval("yorumIcerik") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-danger" NavigateUrl='<%# "yorumSil.aspx?yorumID=" +  Eval("yorumID") %>'>Sil</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" class="btn btn-warning" NavigateUrl='<%# "yorumGuncelle.aspx?yorumID=" +  Eval("yorumID") %>'>Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>

</asp:Content>
