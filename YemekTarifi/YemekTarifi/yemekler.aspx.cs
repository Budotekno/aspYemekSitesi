using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class yemekler : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();

        string islem = "", id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {

             

                id = Request.QueryString["yemekId"];
                islem = Request.QueryString["islem"];

                


                //Kategori Listesi

                SqlCommand komut2 = new SqlCommand("select * from kategoriler", bag.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriID";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }


            SqlCommand komut = new SqlCommand("select * from yemekler",bag.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            if (islem=="sil")
            {
                SqlCommand silKomut = new SqlCommand("delete from yemekler where yemekId=@p1", bag.baglanti());
                silKomut.Parameters.AddWithValue("@p1", id);
                silKomut.ExecuteNonQuery();
                bag.baglanti().Close();

            }

           
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            //yemek ekleme
            SqlCommand yemekEkle = new SqlCommand("insert into yemekler (yemekAd, yemekMalzeme, yemekTarifi, kategoriID) " +
                "values (@p1, @p2, @p3, @p4)",bag.baglanti());
            yemekEkle.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            yemekEkle.Parameters.AddWithValue("@p2", txtMal.Text);
            yemekEkle.Parameters.AddWithValue("@p3", txtTarif.Text);
            yemekEkle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue );

            yemekEkle.ExecuteNonQuery();
            bag.baglanti().Close();

            //kategori sayısını artırma

            SqlCommand sayiArtirma = new SqlCommand("update kategoriler set kategoriAdet=kategoriAdet+1 where kategoriID=@p1 ",bag.baglanti());
            sayiArtirma.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            sayiArtirma.ExecuteNonQuery();
            bag.baglanti().Close();

          
        }
    }
}