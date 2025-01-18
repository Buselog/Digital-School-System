using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace EOkulWeb_Project
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDown(comboBox) içerisinde öğretmenleri gösterme işlemi, back-end kısmı:




            //Page.IsPostBack Kısaca Ne İşe Yarar?
            //İlk Yükleme(Initial Load): Sayfa tarayıcıda ilk kez yüklendiğinde Page.IsPostBack değeri false olur.
            //Geri Gönderim(Postback): Sayfa, kullanıcı etkileşimi(örneğin, bir butona tıklama veya form gönderimi)
            //sonucunda sunucuya gönderilip tekrar yüklendiğinde Page.IsPostBack değeri true olur.
            //Kullanım Amacı
            //Sayfanın sadece ilk yüklenişinde çalışması gereken kodları ayırmak.
            //Geri gönderim sırasında gereksiz işlemleri önlemek.

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.Tbl_OgretmenTableAdapter dt = new DataSet1TableAdapters.Tbl_OgretmenTableAdapter();
                DropDownDuyuruOgr.DataSource = dt.OgretmenListesi();
                DropDownDuyuruOgr.DataTextField = "OgretmenAdSoyad"; //Ön kısımda bunu göster
                DropDownDuyuruOgr.DataValueField = "OgretmenId"; // Arka kısım(back-end) tarafında ise bunu seçmiş ol aslında demek istiyor.
                DropDownDuyuruOgr.DataBind(); //data source'ı veriyle bağla, son aşama.
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_DuyuruTableAdapter dt = new DataSet1TableAdapters.Tbl_DuyuruTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslik.Text, TextAreaIcerik.Value.ToString(), Convert.ToInt32(DropDownDuyuruOgr.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx"); //Ekleme işleminden sonra duyuru listesi sayfasına yönlendir.
        }
    }
}