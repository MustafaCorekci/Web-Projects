<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="DiziYorum.Kullanici.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>İLETİŞİM</h2>
                <p>Blog sayfamızda bulunan film ve dizilere eklemek istedikleriniz için veya yorumlarda yaşayacağınız herhangi bir problem olursa bu panelden bizlere mesaj gönderebilirsiniz. Mesaj gönderme sırasında mutlaka mail adresinizi doğru bir şekilde yazın ki sizlere bu mail üzerinden dönüş yapabilelim.</p>
            </div>
            <div class="contact-details">
                <form runat="server">
                    <asp:TextBox ID="txtAdSoyad" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" required=""></asp:TextBox>
                    <asp:TextBox ID="txtTelefon" runat="server" placeholder="Telefon" required=""></asp:TextBox>
                    <asp:TextBox ID="txtKonu" runat="server" placeholder="Konu" required=""></asp:TextBox>
                    <asp:TextBox ID="txtMesaj" runat="server" TextMode="MultiLine" Height="150px" placeholder="Mesajınız" required=""></asp:TextBox>

                    <asp:Button ID="btnGonder" runat="server" Text="Gönder" OnClick="btnGonder_Click" />
                </form>
            </div>
            <div class="contact-details">
                <div class="col-md-6 contact-map">
                    <h4>Biz Buradayız</h4>
                    <div class="mapouter">
                        <div class="gmap_canvas">
                            <iframe width="600" height="600" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=600&amp;hl=en&amp;q=istanbul / eminönü&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
                            <a href="https://embedgooglemap.xyz/"></a>
                        </div>
                        <style>
                            .mapouter {
                                position: relative;
                                text-align: right;
                                width: 600px;
                                height: 600px;
                            }

                            .gmap_canvas {
                                overflow: hidden;
                                background: none !important;
                                width: 600px;
                                height: 600px;
                            }
                        </style>
                    </div>
                </div>
                <div class="col-md-6 company_address">
                    <h4>Konumumuz</h4>
                    <p>İstanbul / Eminönü</p>
                    <p>Sahil Yolu</p>
                    <p>Türkiye</p>
                    <p>Phone:(555) 555 55 55</p>
                    <p>Fax: (212) 212 12 12</p>
                    <p>Email: <a href="mailto:info@example.com">blogdizi@gmail.com</a></p>
                    <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                </div>
                <div class="clearfix"></div>
            </div>


        </div>
    </div>

</asp:Content>
