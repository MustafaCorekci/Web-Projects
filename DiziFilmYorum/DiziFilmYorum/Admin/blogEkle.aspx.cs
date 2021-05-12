using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class yeniBlog : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }

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
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            tblBlog t = new tblBlog();
            t.blogBaslik = txtBlogBaslik.Text;
            t.blogTarih = DateTime.Parse(txtBlogTarih.Text);
            t.blogGorsel = txtBlogGorsel.Text;
            t.blogIcerik = txtBlogIcerik.Text;
            t.blogTur = byte.Parse(listTur.SelectedValue);
            t.blogKategori = byte.Parse(listKategori.SelectedValue);
            db.tblBlog.Add(t);
            db.SaveChanges();
            Response.Redirect("bloglar.aspx");
        }
    }
}