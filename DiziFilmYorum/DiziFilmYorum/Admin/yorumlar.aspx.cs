using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class yorumlar : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            var yorumlar = (from x in db.tblYorum
                            select new
                            {
                                x.yorumID,
                                x.kullaniciAd,
                                x.yorumIcerik,
                                x.tblBlog.blogBaslik
                            }).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}