using Azure.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class DuyuruSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sililnecekDuyuruId = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
            DataSet1TableAdapters.Tbl_DuyuruTableAdapter dt = new DataSet1TableAdapters.Tbl_DuyuruTableAdapter();
            dt.DuyuruSil(sililnecekDuyuruId);
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}