using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class yorumSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            dbDiziYorumEntities db = new dbDiziYorumEntities();

            int id = int.Parse(Request.QueryString["yorumId"]);
            var yorum = db.tblYorum.Find(id);
            db.tblYorum.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("yorumlar.aspx");
        }
    }
}