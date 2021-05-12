using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class istatistikler : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            lblBlogSayisi.Text = db.tblBlog.Count().ToString();
            lblYorumSayisi.Text = db.tblYorum.Count().ToString();
            lblFilmSayisi.Text = db.tblBlog.Where(X => X.blogTur == 2).Count().ToString();
            lblDiziSayisi.Text = db.tblBlog.Where(x => x.tblTur.turAd == "Dizi").Count().ToString();
            lblAnimasyonSayisi.Text = db.tblBlog.Where(x => x.tblTur.turAd == "Animasyon").Count().ToString();
            lblFazlaYorumluBlog.Text = db.tblBlog.Where(x => x.blogID == (db.tblYorum.GroupBy(y => y.yorumBlog).OrderByDescending(z => z.Count()).Select(y => y.Key).FirstOrDefault())).Select(z => z.blogBaslik).FirstOrDefault();
        }
    }
}