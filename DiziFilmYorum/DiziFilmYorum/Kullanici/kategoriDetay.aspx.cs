using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Kullanici
{
    public partial class kategoriDetay : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["kategoriID"]);

            var bloglar = db.tblBlog.Where(x => x.blogKategori == id).ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();
            Repeater2.DataSource = bloglar;
            Repeater2.DataBind();

            var kategoriler = db.tblKategori.ToList();
            Repeater3.DataSource = kategoriler;
            Repeater3.DataBind();
        }
    }
}