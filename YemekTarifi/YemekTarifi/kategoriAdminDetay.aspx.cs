using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class kategoriAdminDetay : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        String Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["kategoriId"];
            if (Page.IsPostBack == false)
            {


               
                SqlCommand komut = new SqlCommand("Select * from kategoriler where kategoriID =@p1", bag.baglanti());
                komut.Parameters.AddWithValue("@p1", Id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    TextBox2.Text = dr[1].ToString();
                    TextBox1.Text = dr[2].ToString();
                }

                bag.baglanti().Close();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("update kategoriler set kategoriAd=@p1, kategoriAdet=@p2 where kategoriID=@p3 ", bag.baglanti()) ;
            komut.Parameters.AddWithValue("@p1",TextBox2.Text);
            komut.Parameters.AddWithValue("@p2", TextBox1.Text);
            komut.Parameters.AddWithValue("@p3", Id);
            komut.ExecuteNonQuery();
            bag.baglanti().Close();


        }
    }
}