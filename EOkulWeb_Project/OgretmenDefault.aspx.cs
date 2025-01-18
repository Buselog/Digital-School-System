using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Tablodan veriyi getirme işleminin back-end kodları
            //table adapter oluşturmuştuk.
            //Buradan bir nesne oluşturarak yazdığımız querynin(select * form Tbl_Ogrenci) verdiğimiz metod ismine(OgrenciListesi) ulaşıyoruz.
            DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();
            //Default.aspx tarafında yazdığımız repeater'ın veri kaynağına(data grid view olarak düşünülebilir) veriyi(query'i) aktarıyoruz.
            Repeater1.DataSource = dt.OgrenciListesi();
            //Repeater'ı veriye bağlıyoruz.
            Repeater1.DataBind();
        }
    }
}