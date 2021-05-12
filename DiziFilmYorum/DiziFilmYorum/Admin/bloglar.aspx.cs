using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class bloglar : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            var deger = (from x in db.tblBlog
                         select new
                         {
                             x.blogID,
                             x.blogBaslik,
                             x.blogTarih,
                             x.tblTur.turAd,
                             x.tblKategori.kategoriAd
                         }).ToList();

            Repeater1.DataSource = deger;
            Repeater1.DataBind();
        }
    }
}