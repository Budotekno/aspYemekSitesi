using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class yorumDetay : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();

        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand listele = new SqlCommand("select yorumAdSoyad, yorumMail, yorumIcerik,yemekAd from yorumlar inner join yemekler on yorumlar.yemekId=yemekler.yemekId  where yorumId = @p1", bag.baglanti());
                listele.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = listele.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();

                }

                bag.baglanti().Close();

            }

            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
         

            SqlCommand onayla = new SqlCommand("update yorumlar set  yorumIcerik=@p1, yorumOnay=@p2 where yorumId =@p3 ", bag.baglanti());
            onayla.Parameters.AddWithValue("@p1",TextBox3.Text);
            onayla.Parameters.AddWithValue("@p2","True");
            onayla.Parameters.AddWithValue("@p3",id);
            onayla.ExecuteNonQuery();
            bag.baglanti().Close();

            
        }
    }
}