using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Kullanici
{
    public partial class hakkimizda : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.tblHakkimizda.ToList();
            Repeater1.DataBind();
        }
    }
}