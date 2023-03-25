using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlCommand komut = new SqlCommand("insert into mesajlar (mesajGonderen, mesajMail, mesajBaslik, mesajIcerik ) values (@p1, @p2, @p3, @p4)", bag.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut.ExecuteNonQuery();
            bag.baglanti().Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            
        }

       
    }
}