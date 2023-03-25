using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class yemekDetay : System.Web.UI.Page
    {

        sqlBaglantisi baglanti = new sqlBaglantisi();
        string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekId"];

            SqlCommand komut = new SqlCommand("Select yemekAd from yemekler where yemekId=@p1",baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1",yemekId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }

            baglanti.baglanti().Close();


            SqlCommand komut2 = new SqlCommand("Select * from yorumlar where yemekId=@p2", baglanti.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into yorumlar (yorumAdSoyad, yorumMail, yorumIcerik, yemekId) values (@p1, @p2, @p3, @p4)",baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekId);
            komut.ExecuteNonQuery();
            baglanti.baglanti().Close();
        }
    }
}