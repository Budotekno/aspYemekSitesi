using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class yorumlar : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            // onayli yorum listele
            SqlCommand onayliYorumListele = new SqlCommand("Select * from yorumlar where yorumOnay=1",bag.baglanti());
            SqlDataReader dr = onayliYorumListele.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            // onaysiz yorum listele
            SqlCommand onaysizYorumListele = new SqlCommand("Select * from yorumlar where yorumOnay=0", bag.baglanti());
            SqlDataReader dr2 = onaysizYorumListele.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            
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
    }
}