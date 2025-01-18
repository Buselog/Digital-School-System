using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataSet'te yazılan çeşitli istatistik query'lerini ön yüze çeken backend kodları

            DataSet1TableAdapters.IstatistiklerTableAdapter dt = new DataSet1TableAdapters.IstatistiklerTableAdapter();
            Txt1.Text = "Toplam Öğrenci Sayısı: " + dt.IstatistikOgrenciSayi().ToString();

            Txt2.Text = "Toplam Öğretmen Sayısı: " + dt.IstatistikOgretmenSayi().ToString();

            Txt3.Text = "Toplam Ders Sayısı: " + dt.IstatistikDersSayi().ToString();


            //Bu query bir dataTable dönüyor, bu nedenle tablo üzerinde gösterilmeli
            //Yani tek bir satırlık veri dönmüyor, birkaç satırdan oluşan bir table dönüyor.
            //Zaten üstüne gelince veri tipi olarak DataTable1 olarak gözüküyor.
            //Bu nedenle birden fazla veriyi bir tablo üzerinde gösterik. 
            //Bir nevi listeleme işlemi.
            Repeater1.DataSource = dt.Sinav1Istatistik(Session["OgretmenNumara"].ToString());
            Repeater1.DataBind();

            Txt4.Text = "Sistemdeki Toplam Duyuru Sayısı: " + dt.IstatistikDuyuruSayi();

            Repeater2.DataSource = dt.Sinav2Istatistik(Session["OgretmenNumara"].ToString());
            Repeater2.DataBind();

            Repeater3.DataSource = dt.Sinav3Istatistik(Session["OgretmenNumara"].ToString());
            Repeater3.DataBind();


            // Sınav ortalamaları, her ne kadar tek veri döndürüyor olsa da tek satır ve tek sütundan oluşan bir table olarak algılanıyor ASP.Net tarafında

            DataTable dtSinavOrtalama = dt.Sinav1Ortalama(Session["OgretmenNumara"].ToString());
            Txt5.Text = "1. Sınav Not Ortalaması: " + dtSinavOrtalama.Rows[0][0]; //İlk satırın ilk sütun verisini alır


            dtSinavOrtalama = dt.Sinav2Ortalama(Session["OgretmenNumara"].ToString());
            Txt6.Text = "2. Sınav Not Ortalaması: " + dtSinavOrtalama.Rows[0][0];


            dtSinavOrtalama = dt.Sinav3Ortalama(Session["OgretmenNumara"].ToString());
            Txt7.Text = "3. Sınav Not Ortalaması: " + dtSinavOrtalama.Rows[0][0];


        }
    }
}