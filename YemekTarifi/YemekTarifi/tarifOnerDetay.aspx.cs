using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class tarifOnerDetay : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarifId"];
            if (Page.IsPostBack == false)
            {


                SqlCommand listele = new SqlCommand("select * from tarifler where tarifId=@p1", bag.baglanti());
                listele.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = listele.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    //TextBox1.Text = dr[0].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox6.Text = dr[6].ToString();

                }



                bag.baglanti().Close();


                //Kategori Listesi

                SqlCommand komut2 = new SqlCommand("select * from kategoriler", bag.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriID";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //durum güncelleme

            SqlCommand guncelleme = new SqlCommand("update tarifler set tarifDurum =1 where tarifId=@p1",bag.baglanti());
            guncelleme.Parameters.AddWithValue("@p1", id);
            guncelleme.ExecuteNonQuery();
            bag.baglanti().Close();

            //yemeği anasayfaya ekleme

            SqlCommand anaEkle = new SqlCommand("insert into yemekler (yemekad, yemekMalzeme, yemekTarifi, kategoriID) values (@p1, @p2, @p3,@p4)",bag.baglanti());
            anaEkle.Parameters.AddWithValue("@p1", TextBox1.Text);
            anaEkle.Parameters.AddWithValue("@p2", TextBox2.Text);
            anaEkle.Parameters.AddWithValue("@p3", TextBox3.Text);
            anaEkle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            anaEkle.ExecuteNonQuery();
            bag.baglanti().Close();

        }
    }
}