using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class blogGuncelle : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            id = int.Parse(Request.QueryString["blogID"]);
            if (Page.IsPostBack == false)
            {
                var turler = (from x in db.tblTur
                              select new
                              {
                                  x.turAd,
                                  x.turID
                              }).ToList();
                listTur.DataSource = turler;
                listTur.DataBind();

                var kategoriler = (from x in db.tblKategori
                                   select new
                                   {
                                       x.kategoriAd,
                                       x.kategoriID
                                   }).ToList();
                listKategori.DataSource = kategoriler;
                listKategori.DataBind();

                var deger = db.tblBlog.Find(id);
                txtBlogBaslik.Text = deger.blogBaslik;
                txtBlogGorsel.Text = deger.blogGorsel;
                txtBlogIcerik.Text = deger.blogIcerik;
                txtBlogTarih.Text = deger.blogTarih.ToString();
                listTur.SelectedValue = deger.blogTur.ToString();
                listKategori.SelectedValue = deger.blogKategori.ToString();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            var blog = db.tblBlog.Find(id);
            blog.blogBaslik = txtBlogBaslik.Text;
            blog.blogGorsel = txtBlogGorsel.Text;
            blog.blogIcerik = txtBlogIcerik.Text;
            blog.blogTarih = DateTime.Parse(txtBlogTarih.Text);
            blog.blogKategori = byte.Parse(listKategori.SelectedValue);
            blog.blogTur = byte.Parse(listTur.SelectedValue);
            db.SaveChanges();
            Response.Redirect("bloglar.aspx");
        }
    }
}