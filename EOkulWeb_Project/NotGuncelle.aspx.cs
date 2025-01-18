using System;
using System.Collections.Generic;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                //DropDownList öğelerinde DataTextField(gösterilen metin) ve 
                //DataValueField(arkaplanda saklanan değer) ayrımı vardır.

                //DataSet1TableAdapters.Tbl_DersTableAdapter dt = new DataSet1TableAdapters.Tbl_DersTableAdapter();
                //DropDownListDersler.DataSource = dt.DerslerListesi();
                //DropDownListDersler.DataTextField = "DersAd";
                //DropDownListDersler.DataValueField = "DersId";
                //DropDownListDersler.DataBind();


                //Güncellenmek istenen satırın verilerini güncelleme listesindeki ilgili alanlara çekme işlemi:
                //Bu işlem not tablosundaki id'ye göre yapılır. 

                DataSet1TableAdapters.Tbl_NotTableAdapter dt1 = new DataSet1TableAdapters.Tbl_NotTableAdapter();

                id = Convert.ToInt32(Request.QueryString["NotId"].ToString());
                TxtDersId.Text = dt1.OgretmenNotSec(id)[0].DersId.ToString();
                TxtDersAd.Text = dt1.OgretmenNotSec(id)[0].DersAd;
                TxtOgrId.Text = dt1.OgretmenNotSec(id)[0].OgrenciID.ToString();
                TxtOgrAdSoyad.Text = dt1.OgretmenNotSec(id)[0].OgrenciAdSoyad;
                TxtOgrSinav1.Text = dt1.OgretmenNotSec(id)[0].Sinav1.ToString();
                TxtOgrSinav2.Text = dt1.OgretmenNotSec(id)[0].Sinav2.ToString();
                TxtOgrSinav3.Text = dt1.OgretmenNotSec(id)[0].Sinav3.ToString();
                TxtOgrOrtalama.Text = dt1.OgretmenNotSec(id)[0].Ortalama.ToString();
                TxtOgrDurum.Text = dt1.OgretmenNotSec(id)[0].Durum.ToString();
            }
        }


        //Hesapla Butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            int sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(TxtOgrSinav1.Text);
            sinav2 = Convert.ToInt32(TxtOgrSinav2.Text);
            sinav3 = Convert.ToInt32(TxtOgrSinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3.00;
            TxtOgrOrtalama.Text = ortalama.ToString("0.00");
            if (ortalama >= 50)
            {
                TxtOgrDurum.Text = "True";
            }
            else TxtOgrDurum.Text = "False";


        }

        //Güncelleme Butonu:
        protected void Button2_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["NotId"].ToString()); //sadece ilgili satırdaki kişinin notları sql tarafında güncellensin diye satırın primary key'i bulunur, koşul olarak NotGuncelle metoduna eklenir(Where Id=@Id)
            DataSet1TableAdapters.Tbl_NotTableAdapter dt = new DataSet1TableAdapters.Tbl_NotTableAdapter();
            dt.OgretmenNotGuncelle(byte.Parse(TxtOgrSinav1.Text), byte.Parse(TxtOgrSinav2.Text), byte.Parse(TxtOgrSinav3.Text),
                decimal.Parse(TxtOgrOrtalama.Text), bool.Parse(TxtOgrDurum.Text), id);
            Response.Redirect("NotListesi.aspx");
        }
    }
}