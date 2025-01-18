using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace EOkulWeb_Project
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection bgl = new SqlConnection(@"Data Source=DESKTOP-V7IDV6Q\SQLEXPRESS01;Initial Catalog=EOkulWeb;Integrated Security=True;TrustServerCertificate=True");
    

        protected void BtnOgrenciGirisi_Click(object sender, EventArgs e)
        {
            bgl.Open();
            SqlCommand commandGiris = new SqlCommand("Select * from Tbl_Ogrenci where OgrenciNumara=@p1 and OgrenciSifre=@p2", bgl);
            commandGiris.Parameters.AddWithValue("@p1", TxtNumara.Text);
            commandGiris.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader readerGiris = commandGiris.ExecuteReader();
            if (readerGiris.Read()) //Veriler doğru okunduğu sürece okumaya devam et
            {

                /*
                 Session:
                  ASP.NET'te kullanıcı bazlı verileri sunucu tarafında saklamak için kullanılan bir koleksiyondur.
                  Her kullanıcı için benzersiz bir oturum (session) oluşturulur ve bu oturum boyunca veri saklanabilir.

                  Bu satır, kullanıcının bir TextBox'a girdiği numarayı "OgrenciNumara" 
                  anahtarıyla oturumda saklamaktadır. Bu şekilde oturum süresince diğer sayfalardan veya işlemlerden bu bilgiye erişilebilir.
                 */
                Session["OgrenciNumara"] = readerGiris["OgrenciNumara"];
                Session["Role"] = "Ogrenci";
                Session["OgrenciAdSoyad"] = readerGiris["OgrenciAd"] +" " +readerGiris["OgrenciSoyad"];
                Response.Redirect("OgrenciDefault.aspx");

                //Giriş yapan ilgili öğrencinin bilgilerinin bulunduğu sayfaya yönlendir.
                //Yönlendirirken, o sayfaya TxtNumara textBox'ı içine girilen numarayı da OgrenciNumara(sql sütun adı doğru olmalı) adı altında taşı.
            }
            else
            {
                string script = "Swal.fire({icon: 'error', title: 'Hata!', text: 'Hatalı kullanıcı adı veya şifre!' });";
                ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", script, true);
            }
            bgl.Close();
        }

        protected void BtnOgretmenGiris_Click(object sender, EventArgs e)
        {

            bgl.Open();
            SqlCommand commandGirisOgretmen = new SqlCommand("Select * from Tbl_Ogretmen where OgretmenNumara=@p1 and OgretmenSifre=@p2", bgl);
            commandGirisOgretmen.Parameters.AddWithValue("@p1", TxtNumara.Text);
            commandGirisOgretmen.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader readerGiris = commandGirisOgretmen.ExecuteReader();
            if (readerGiris.Read()) //Veriler doğru okunduğu sürece okumaya devam et
            {
                //Session.Add("OgretmenNumara", TxtNumara.Text);

                Session["OgretmenNumara"] = readerGiris["OgretmenNumara"].ToString(); // Öğretmen numarasını sakla
                Session["OgretmenAdSoyad"] = readerGiris["OgretmenAdSoyad"].ToString();
                Session["OgretmenBrans"] = readerGiris["OgretmenBrans"].ToString(); //Veritabanında Id olarak kayıtlı.
                Session["Role"] = "Ogretmen";

                Response.Redirect("OgretmenDefault.aspx");
            }
            else //Hata mesajı ver:
            {
                string script = "Swal.fire({icon: 'error', title: 'Hata!', text: 'Hatalı kullanıcı adı veya şifre!' });";
                ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", script, true);
            }

            //DataSet1TableAdapters.Tbl_OgretmenTableAdapter dt = new DataSet1TableAdapters.Tbl_OgretmenTableAdapter();
            //string ogretmenNumara = Session["OgretmenNumara"].ToString();
            //var brans = dt.OgretmenBransSec(ogretmenNumara);
            //Session["OgretmenBransForMaster"] = dt.OgretmenBransSec(ogretmenNumara);

            bgl.Close();


           

        }
    }
}