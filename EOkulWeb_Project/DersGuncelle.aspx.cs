using System;
using System.Web.UI;

namespace EOkulWeb_Project
{
    public partial class DersGuncelle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                //NavigateUrl'de verilen, güncellenmek istenen verinin id'si ile işlem yapılacağı için
                //id verisini bir değişkende tutmalıyız.

                //Daha sonra güncellenmek istenen verinin eski bilgilerinin güncelleme sayfasında gözükmesi için
                //DataSet tarafında yazılan DersSec() metoduna ulaşılarak ilgili verinin id'si verilmeli,
                //Select * from Tbl_Dersler Where DersId=@DersId querysi arka planda çalışarak sadece istenen satırın
                //verilerine ulaşarak textBox içlerini eski verilerle dolduracağız.

                int id = Convert.ToInt32(Request.QueryString["DersId"].ToString());
                DataSet1TableAdapters.Tbl_DersTableAdapter dt = new DataSet1TableAdapters.Tbl_DersTableAdapter();

                TxtDersId.Text = dt.DersSec(id)[0].DersId.ToString();
                TxtDersAd.Text = dt.DersSec(id)[0].DersAd;
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_DersTableAdapter dt = new DataSet1TableAdapters.Tbl_DersTableAdapter();
            dt.DersGuncelle(TxtDersAd.Text, Convert.ToInt32(TxtDersId.Text));
            //TextBox içine yazılan yeni ders adını, ve hangi id nolu ders için bu güncellemeyi yaptığımızı girdik.
            Response.Redirect("DersListesi.aspx");
        }
    }
}