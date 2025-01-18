using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class DuyuruListele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_DuyuruTableAdapter dt = new DataSet1TableAdapters.Tbl_DuyuruTableAdapter();
            Repeater1.DataSource = dt.DuyuruListesi();
            Repeater1.DataBind();
        }


        /*
         Page_PreInit: Master Page'ini dinamik olarak değiştirmek gibi işlemler için kullanılır.

        Bu olay, sayfanın Init olayından önce çalıştığı için, Master Page dosyasını burada değiştirebiliriz. 
        Sayfa yüklendikten sonra Master Page değiştirmek mümkün değildir, bu yüzden PreInit olayında değiştirmeliyiz.

        Master Page yalnızca Page_PreInit içinde değiştirebilir, çünkü sayfa oluştuktan sonra değiştirmek mümkün değildir.
         
         */

        protected void Page_PreInit(object sender, EventArgs e)
        {
            string role = Session["Role"].ToString(); 
            //Login sayfasının back-end tarafında giriş yapılan rollere göre(öğrenci/öğretmen) rol bilgisini session olarak tutmuştuk.
            //SideBar'da DuyuruListele'ye tıklandığında önce bu metod çalışacak (Previous İnitialize -PreInit)
            if (role == "Ogrenci")
            {
                this.MasterPageFile = "~/Ogrenci.Master"; //sayfanın hangi Master Page dosyasını kullanacağını belirleyen bir özelliktir.
            }
            else if (role == "Ogretmen")
            {
                this.MasterPageFile = "~/Ogretmen.Master";
            }
            else
            {
                Response.Redirect("LoginPanel.aspx");  //Aksi bir durum oluşması halinde kullanıcı login sayfasına yönlendirilir.
            }
        }

    }
}