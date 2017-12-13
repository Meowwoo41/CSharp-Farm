using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace FarmWeb.Page
{
    public partial class member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            //SQL連線
            string connstr = ConfigurationManager.AppSettings["conStr"];
            SqlConnection sqlCon = new SqlConnection(connstr);

            //取出帳號密碼
            string sql_account = "select * from cus_pw where '"+txt_account.Text+"'";
            DataTable dt = new DataTable();
            dt = sql_get(sql_account, connstr);
            int a = Convert.ToInt32(dt.Rows[0]["max"].ToString()) + 1;
            string result = "A" + a.ToString("000000");


        }
        DataTable sql_get(string sql, string connstr)//取得sql資料
        {
            DataTable sqldata = new DataTable();
            SqlConnection connect = new SqlConnection(connstr);
            try
            {
                connect.Open();
                SqlDataAdapter myAdapter = new SqlDataAdapter(sql, connect);
                myAdapter.Fill(sqldata);

                //釋放記憶體
                myAdapter.Dispose();
            }
            catch (Exception ex)
            {
                throw (ex);
            }
            finally
            {
                //釋放記憶體                
                connect.Close();
                connect.Dispose();
            }
            return sqldata;
        }
    }
}