using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class yemekDuzenle : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemekId"];
            if (Page.IsPostBack == false)
            {



                SqlCommand komut = new SqlCommand("Select * from yemekler where yemekId =@p1", bag.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }

                bag.baglanti().Close();



                if (Page.IsPostBack == false)
                {


                    //Kategori Listesi

                    SqlCommand komut2 = new SqlCommand("select * from kategoriler", bag.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "kategoriAd";
                    DropDownList1.DataValueField = "kategoriID";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                  
                  //   DropDownList1.SelectedIndex = Convert.ToInt32(id);
                   // DropDownList1.SelectedIndex = Convert.ToInt32(DropDownList1.DataValueField = "kategoriID");
                }

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("/img/"+FileUpload1.FileName));

            SqlCommand guncelle = new SqlCommand("update yemekler set yemekAd = @p1, yemekMalzeme = @p2,  yemekTarifi=@p3, kategoriID=@p4, yemekResim=@p6 where yemekId=@p5",bag.baglanti());
            guncelle.Parameters.AddWithValue("@p1",TextBox1.Text);
            guncelle.Parameters.AddWithValue("@p2",TextBox2.Text);
            guncelle.Parameters.AddWithValue("@p3",TextBox3.Text);
            guncelle.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            guncelle.Parameters.AddWithValue("@p6", "~/img/"+FileUpload1.FileName);
            guncelle.Parameters.AddWithValue("@p5",id);

            guncelle.ExecuteNonQuery();
            bag.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //tüm yemeklerin durumunu false yaptık
            SqlCommand komut = new SqlCommand("update yemekler set yemekDurum=0",bag.baglanti());
            komut.ExecuteNonQuery();
            bag.baglanti().Close();

            //günün yemeği için id ye göre true yaptık
            SqlCommand komutTrue = new SqlCommand(" update yemekler set yemekDurum=1 where yemekId=@p1",bag.baglanti());
            komutTrue.Parameters.AddWithValue("@p1", id);
            komutTrue.ExecuteNonQuery();
            bag.baglanti().Close();
        }
    }
}