using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class mesajDetay : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();

        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["mesajID"];

            SqlCommand komut = new SqlCommand("select * from mesajlar where mesajID=@p1", bag.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[3].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[4].ToString();

            }

            bag.baglanti().Close();


        }
    }
}