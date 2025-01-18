using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack == false)
            {
                //Seçilen duyurunun id'sine göre ilgili tüm verileri duyuru güncelleme sayfasına aktarsın:

                DataSet1TableAdapters.Tbl_DuyuruTableAdapter dt = new DataSet1TableAdapters.Tbl_DuyuruTableAdapter();

                int id = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
                TxtDuyuruId.Text = dt.DuyuruSec(id)[0].DuyuruId.ToString();
                TxtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DuyuruBaslik;
                TextAreaDuyuruIcerik.Value = dt.DuyuruSec(id)[0].DuyuruIcerik;

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_DuyuruTableAdapter dt1 = new DataSet1TableAdapters.Tbl_DuyuruTableAdapter();
            dt1.DuyuruGuncelle(TxtDuyuruBaslik.Text, TextAreaDuyuruIcerik.Value, Convert.ToInt32(TxtDuyuruId.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }

     
    }
}