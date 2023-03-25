using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class kategoriDetay : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        String kategoriId = ""; 
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];
            SqlCommand komut = new SqlCommand("select * from yemekler where kategoriId=@p1",bag.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriId);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}