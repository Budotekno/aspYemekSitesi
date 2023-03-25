using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class kategoriler : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        string id = "", islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["kategoriID"];
                islem = Request.QueryString["islem"];


            }

            if (islem =="sil")
            {
                SqlCommand komut2 = new SqlCommand("delete from kategoriler where kategoriID=@p1",bag.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bag.baglanti().Close();

            }

            SqlCommand komut = new SqlCommand("select * from kategoriler", bag.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            Panel2.Visible = false;
            Panel4.Visible = false;

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
            Panel4.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into kategoriler (kategoriAd) values (@p1)",bag.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bag.baglanti().Close();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}