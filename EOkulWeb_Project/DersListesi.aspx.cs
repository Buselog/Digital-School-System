using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class DersListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_DersTableAdapter dt = new DataSet1TableAdapters.Tbl_DersTableAdapter();
            Repeater1.DataSource = dt.DerslerListesi();
            Repeater1.DataBind();
        }
    }
}