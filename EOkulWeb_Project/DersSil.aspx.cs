using Azure.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class DersSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Silinecek verinin NavigateUrl'den girilen Id'si ile işlem yapabilmek için hafızaya alıyoruz:
            int id = Convert.ToInt32(Request.QueryString["DersId"].ToString());


            //DataSet'te oluşturduğumuz DersSil() metoduna(Query) ulaşmak için nesne üretimi:
            DataSet1TableAdapters.Tbl_DersTableAdapter dt = new DataSet1TableAdapters.Tbl_DersTableAdapter();
            dt.DersSil(id); //Ders id'sine göre dersi silme işlemi yapılır
            Response.Redirect("DersListesi.aspx"); //Silme işleminden sonra Ders listesi sayfasına git

        }
    }
}