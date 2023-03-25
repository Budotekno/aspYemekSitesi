using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class gununYemegi : System.Web.UI.Page
    {
        sqlBaglantisi baglanti = new sqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            

            SqlCommand komut = new SqlCommand("Select * from yemekler where yemekDurum=1", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();


        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}