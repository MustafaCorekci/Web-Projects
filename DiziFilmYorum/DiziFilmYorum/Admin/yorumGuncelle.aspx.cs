using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class yorumGuncelle : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            id = int.Parse(Request.QueryString["yorumId"]);

            if (Page.IsPostBack == false)
            {
                var deger = db.tblYorum.Find(id);
                txtBlogBaslik.Text = deger.tblBlog.blogBaslik;
                txtKullanıcı.Text = deger.kullaniciAd;
                txtYorumIcerik.Text = deger.yorumIcerik;
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
                var yorum = db.tblYorum.Find(id);
                yorum.kullaniciAd = txtKullanıcı.Text;
                yorum.yorumIcerik = txtYorumIcerik.Text;
                db.SaveChanges();
                Response.Redirect("yorumlar.aspx");
        }
    }
}