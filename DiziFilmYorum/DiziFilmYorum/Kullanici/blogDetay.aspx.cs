using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Kullanici
{
    public partial class blogDetay : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["blogID"].ToString());
            var blog = db.tblBlog.Where(x => x.blogID == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            var blogYorum = db.tblYorum.Where(x => x.yorumBlog == id).ToList();
            Repeater2.DataSource = blogYorum;
            Repeater2.DataBind();

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            tblYorum t = new tblYorum();
            t.kullaniciAd = txtKullanici.Text;
            t.mail = txtMail.Text;
            t.yorumIcerik = txtYorum.Text;
            t.yorumBlog = id;
            db.tblYorum.Add(t);
            db.SaveChanges();
            Response.Redirect("blogDetay.aspx?blogID=" + id);
        }
    }
}