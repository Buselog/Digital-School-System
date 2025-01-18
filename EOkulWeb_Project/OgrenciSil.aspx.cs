using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["OgrenciId"].ToString());

            DataSet1TableAdapters.Tbl_OgrenciTableAdapter dt = new DataSet1TableAdapters.Tbl_OgrenciTableAdapter();
            dt.OgrenciSil(id);
            Response.Redirect("Default.aspx"); // yanıt yönlendirmesi, öğrenci listesinin olduğu sayfaya yönel.

        }
    }
}