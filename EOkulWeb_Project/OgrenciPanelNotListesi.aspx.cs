using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class OgrenciPanelNotListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) // Sayfa ilk yüklendiğinde çalışsın
            {

                string ogrenciNumara = Session["OgrenciNumara"].ToString();


                DataSet1TableAdapters.Tbl_NotTableAdapter dt = new DataSet1TableAdapters.Tbl_NotTableAdapter();
                var notlar = dt.OgrenciPanelNotListesi(ogrenciNumara);
                Repeater1.DataSource = notlar;
                Repeater1.DataBind();


            }

        }

    }
}