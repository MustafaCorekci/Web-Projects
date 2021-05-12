using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum
{
    public partial class Default : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var bloglar = db.tblBlog.ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var blogList = db.tblBlog.OrderByDescending(x => x.blogID).Take(5).ToList();
            Repeater2.DataSource = blogList;
            Repeater2.DataBind();

            var yorum = db.tblYorum.OrderByDescending(x => x.yorumID).Take(3).ToList();
            Repeater3.DataSource = yorum;
            Repeater3.DataBind();

            var kategoriler = db.tblKategori.ToList();
            Repeater4.DataSource = kategoriler;
            Repeater4.DataBind();
        }
    }
}