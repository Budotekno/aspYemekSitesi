using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class gununYemegiAdmin : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand listele = new SqlCommand("Select * from yemekler",bag.baglanti());
            SqlDataReader dr = listele.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}