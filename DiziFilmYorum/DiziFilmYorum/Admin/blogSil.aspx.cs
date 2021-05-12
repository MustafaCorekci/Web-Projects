using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Admin
{
    public partial class blogSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dbDiziYorumEntities db = new dbDiziYorumEntities();

            int id = int.Parse(Request.QueryString["blogID"]);
            var blog = db.tblBlog.Find(id);
            db.tblBlog.Remove(blog);
            db.SaveChanges();
            Response.Redirect("bloglar.aspx");
        }
    }
}