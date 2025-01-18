using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DataSet'ten bir nesne oluşturarak yazdığımız query içerikli metoda ulaşacağız. Burası back-end kodları.
            DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();
            dt.OgrenciEkle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTel.Text, TxtOgrMail.Text, TxtOgrSifre.Text);
            Response.Redirect("Default.aspx"); //İşlemlerden sonra tekrar Default.aspx'teki kodlara yönel, o sayfayı kullanıcıya göster.
        }
    }
}