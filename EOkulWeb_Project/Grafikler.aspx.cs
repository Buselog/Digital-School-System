using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;

namespace EOkulWeb_Project
{
    public partial class Grafikler : System.Web.UI.Page
    {

        SqlConnection bgl = new SqlConnection(@"Data Source=DESKTOP-V7IDV6Q\SQLEXPRESS01;Initial Catalog=EOkulWeb;Integrated Security=True;TrustServerCertificate=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Ders adına göre girilen not sayısını getiren prosedürün Chart3'e bağlanma işlemi:
            //Sql tarafında yazdığımız query'i bir prosedür olarak kaydettik ve adını Graf1 koyduk.
            //Burada ise SqlCommand içerisine uzun uzadıya query yazmak yerine prosedürü çalıştırmak için
            //Execute Graf1 yazmak ve bgl sqlconnection ile bağlamamız yeterli oldu.

            bgl.Open();
            SqlCommand commandGraf1 = new SqlCommand("Execute Graf1", bgl);
            SqlDataReader readerGraf1 = commandGraf1.ExecuteReader();
            while (readerGraf1.Read()) //Veri olduğu sürece okuma işlemini yap, gezin:
            {
                Chart3.Series["Dersler"].Points.AddXY(readerGraf1[0].ToString(), Convert.ToInt32(readerGraf1[1]));
            }
            bgl.Close();




            //Öğrenci tablosundaki verilere göre erkek-kız oranını Chart4'e bağlama işlemi:
            bgl.Open();
            SqlCommand commandGraf2 = new SqlCommand("Execute Graf2", bgl);
            SqlDataReader readerGraf2 = commandGraf2.ExecuteReader();
            while (readerGraf2.Read())
            {
                Chart4.Series["Cinsiyet"].Points.AddXY(readerGraf2[0].ToString(), Convert.ToInt32(readerGraf2[1]));
            }
            bgl.Close();


            //Branşlara göre öğretmen sayısını veren prosdürü Chart5'e bağlama işlemi:

            bgl.Open();
            SqlCommand commandGraf3 = new SqlCommand("Execute Graf3", bgl);
            SqlDataReader readerGraf3 = commandGraf3.ExecuteReader();
            while (readerGraf3.Read())
            {
                Chart5.Series["Ogretmen"].Points.AddXY(readerGraf3[0].ToString(), Convert.ToInt32(readerGraf3[1]));
            }
            bgl.Close();


            //İlk iki sınav sonucuna göre başarılı ve başarısız(50 üstü ve altı) olan öğrencilerin sayısını veren
            //prosedürü Chart6'ya bağlama işlemi:

            bgl.Open();
            SqlCommand commandGraf4 = new SqlCommand("Execute Graf4", bgl);
            SqlDataReader readerGraf4 = commandGraf4.ExecuteReader();
            while (readerGraf4.Read())
            {
                Chart6.Series["NotOrtalamaDurumu"].Points.AddXY(readerGraf4[0].ToString(), Convert.ToInt32(readerGraf4[1]));
            }
            bgl.Close();








        }
    }
}