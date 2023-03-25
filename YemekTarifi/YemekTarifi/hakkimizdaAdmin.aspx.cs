using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class hakkimizdaAdmin : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if (Page.IsPostBack == false)
            {


                SqlCommand hakkimizdaGetir = new SqlCommand("select * from hakkimizda ", bag.baglanti());
                SqlDataReader dr = hakkimizdaGetir.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }

                bag.baglanti().Close();

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand guncelle = new SqlCommand("update hakkimizda set metin=@p1",bag.baglanti());
            guncelle.Parameters.AddWithValue("@p1", TextBox1.Text);
            guncelle.ExecuteNonQuery();
            bag.baglanti().Close();
        }
    }
}