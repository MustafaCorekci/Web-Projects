using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorum.Entity;

namespace DiziYorum.Kullanici
{
    public partial class iletisim : System.Web.UI.Page
    {
        dbDiziYorumEntities db = new dbDiziYorumEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            tblIletisim t = new tblIletisim();
            t.adSoyad = txtAdSoyad.Text;
            t.mail = txtEmail.Text;
            t.telefon = txtTelefon.Text;
            t.konu = txtKonu.Text;
            t.mesaj = txtMesaj.Text;
            db.tblIletisim.Add(t);
            db.SaveChanges();
        }
    }
}