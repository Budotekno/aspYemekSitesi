using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public class sqlBaglantisi
    {

        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=BUDOTEKNO\SQLEXPRESS;Initial Catalog=yemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;

        }

    }

   

  

    
}