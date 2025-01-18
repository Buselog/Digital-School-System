using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class OgrenciMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false) //ilk yüklendiğinde çalışsın, bir defa.
            {
                lblKullaniciAdi.InnerText = "Hoş geldiniz, " + Session["OgrenciAdSoyad"];
            }
        }
    }
}