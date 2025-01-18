using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class DersEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Ders ekleme işlemi back-end kısmı:

            DataSet1TableAdapters.Tbl_DersTableAdapter dt = new DataSet1TableAdapters.Tbl_DersTableAdapter();
            dt.DersEkle(TxtDersAd.Text);
            Response.Redirect("DersListesi.aspx");
        }
    }
}