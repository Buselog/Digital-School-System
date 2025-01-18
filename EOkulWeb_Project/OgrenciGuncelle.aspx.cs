using EOkulWeb_Project.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            //OgrenciGuncelle.aspx sayfasının backend bölümündeyim. 
            //Sayfa karşıma geldiği anda hangi öğrenci için bu güncelle sayfasına yönlendirildiysem,
            //O öğrencinin id'sini al, ogrenciId textBox içerisinde göster.


            if (Page.IsPostBack == false) //sayfa tekrar tekrar güncellenmesin, bir defa yapılsın bu işlem diye.
            {

                id = Convert.ToInt32(Request.QueryString["OgrenciId"].ToString());

                TxtOgrId.Text = id.ToString();

                //Hangi öğrenci için bu sayfaya yönlendirildiysem, o öğrencinin güncellenecek verilerini Id değerine göre getir:......

                DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();
                TxtOgrAd.Text = dt.OgrenciSec(id)[0].OgrenciAd; //id'ye göre hafızaya aldığın row'un ilk indexine göre OgrenciAd'ı getir.
                TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OgrenciSoyad; //id'ye göre hafızaya aldığın row'un ilk indexine göre OgrenciSoyadı'nı getir.
                TxtOgrTel.Text = dt.OgrenciSec(id)[0].OgrenciTelefon;
                TxtOgrMail.Text = dt.OgrenciSec(id)[0].OgrenciMail;
                TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OgrenciSifre;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTel.Text, TxtOgrMail.Text, TxtOgrSifre.Text, Convert.ToInt32(TxtOgrId.Text));
            Response.Redirect("Default.aspx");
        }
    }
}