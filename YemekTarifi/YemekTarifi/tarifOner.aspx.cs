using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class tarifOner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        sqlBaglantisi baglanti = new sqlBaglantisi();
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tarifler (tarifAd, tarifMalzeme, tarifYapilis, tarifResim, tarifSahip, tarifSahipMail) values (@t1 , @t2,@t3,@t4,@t5,@t6)", baglanti.baglanti());
            komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtTarifMal.Text);
            komut.Parameters.AddWithValue("@t3", txtTarifYapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", txtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6", txtTarifMail.Text);
            komut.ExecuteNonQuery();
            baglanti.baglanti().Close();
            Response.Write("Tarifiniz iletilmiştir :)");
            

        }
    }
}