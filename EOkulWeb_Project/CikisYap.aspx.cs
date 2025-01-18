using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class CikisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Oturumu temizle
            Session.Clear(); // Tüm session bilgilerini temizler
            Session.Abandon(); // Oturumu sonlandırır

         

            // Kullanıcıyı giriş sayfasına yönlendir
            Response.Redirect("LoginPanel.aspx");

        }

    }
}