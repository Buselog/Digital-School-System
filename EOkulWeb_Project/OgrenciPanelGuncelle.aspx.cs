using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class OgrenciPanelGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                string ogrenciNumara = Request.QueryString["OgrenciNumara"]; //Bir önceki sayfadan gelen değeri aldı. 
                DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();
                TxtOgrenciNumara.Text = ogrenciNumara;
                TxtOgrenciAd.Text = dt.OgrenciPanelSec(ogrenciNumara)[0].OgrenciAd;
                TxtOgrenciSoyad.Text = dt.OgrenciPanelSec(ogrenciNumara)[0].OgrenciSoyad;
                TxtOgrenciMail.Text = dt.OgrenciPanelSec(ogrenciNumara)[0].OgrenciMail;
                TxtOgrenciTel.Text = dt.OgrenciPanelSec(ogrenciNumara)[0].OgrenciTelefon;
                TxtOgrenciSifre.Text = dt.OgrenciPanelSec(ogrenciNumara)[0].OgrenciSifre;
                
            }
        }

        protected void BtnBilgileriKaydet_Click(object sender, EventArgs e)
        {
            string ogrencinumara = Request.QueryString["OgrenciNumara"];
            DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt1 = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();
            dt1.OgrenciPanelGuncelle(TxtOgrenciAd.Text, TxtOgrenciSoyad.Text, TxtOgrenciTel.Text, TxtOgrenciMail.Text, TxtOgrenciSifre.Text, ogrencinumara);
            Response.Redirect("OgrenciDefault.aspx?OgrenciNumara="+ogrencinumara);
        }
    }
}