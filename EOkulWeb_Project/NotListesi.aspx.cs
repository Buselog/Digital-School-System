using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOkulWeb_Project
{
    public partial class NotListesi : System.Web.UI.Page
    {
        //Notların getirilmesini sağlayacak back-end kodları:
        //Ama ondan önce notlar için bir dataset yazılmalı.
        //Sql tarafında bir procedure yazmıştık. İnner join ile 3 tabloyu birleştirmiştik.
        //Oluşturacağımız dataSet procedure ile yapılandırılmış şekilde seçilmeli. Diğer dataSetlerle farkı bu.
        //Use existing stored procedure
        protected void Page_Load(object sender, EventArgs e)
        {
            string ogretmenNumara = Session["OgretmenNumara"].ToString();

            DataSet1TableAdapters.Tbl_NotTableAdapter dt = new DataSet1TableAdapters.Tbl_NotTableAdapter();
            Repeater1.DataSource = dt.OgretmenPanelNotListesi(ogretmenNumara);
            Repeater1.DataBind();

        }

        }


    }
