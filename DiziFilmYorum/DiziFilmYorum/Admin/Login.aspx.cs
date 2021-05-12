using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_click(object sender, EventArgs e)
        {
            var sorgu = from x in db.tblAdmin
                        where x.kullanici == txtKullanici.Text && x.sifre == txtSifre.Text
                        select x;

            if (sorgu.Any())
            {
                Session.Add("kullanici", txtKullanici.Text);
                Response.Redirect("bloglar.aspx");
            }
            else
            {
                Response.Write("<script>alert('Kullanıcı Adı Yada Şifre Hatalı !!!')</script>");
            }
        }
    }
}