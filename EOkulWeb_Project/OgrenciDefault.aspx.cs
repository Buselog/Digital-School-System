using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Txt1.Text = Session["OgrenciNumara"].ToString(); //Öğrenci Login sayfasında girilen numarayı aldı ve numara textbox'ına yazdırdı.
            DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();

            Txt2.Text ="Öğrenci Ad Soyad: " +(dt.OgrenciPanelSec(Txt1.Text)[0].OgrenciAd + ' ' + dt.OgrenciPanelSec(Txt1.Text)[0].OgrenciSoyad);
            Txt3.Text = "Öğrenci Mail: "+dt.OgrenciPanelSec(Txt1.Text)[0].OgrenciMail;
            Txt4.Text = "Öğrenci Telefon: "+dt.OgrenciPanelSec(Txt1.Text)[0].OgrenciTelefon;
            Txt5.Text = "Öğrenci Şifre: "+dt.OgrenciPanelSec(Txt1.Text)[0].OgrenciSifre;
            
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciPanelGuncelle.aspx?OgrenciNumara="+Txt1.Text); //TextBox1'den gelen değeri gittiği sayfaya göndersin
        }
    }
}