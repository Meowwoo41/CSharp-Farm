using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;

namespace FarmWeb.Page
{
    public partial class member1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //SQL連線
                string connstr = ConfigurationManager.AppSettings["conStr"];
                SqlConnection sqlCon = new SqlConnection(connstr);

                //縣市
                string sql_city = "select*from [BasicDB].[dbo].[taiwan_city]";
                SqlDataAdapter city = new SqlDataAdapter(sql_city, connstr);
                DataSet ds = new DataSet();
                city.Fill(ds, "t_city");     //第二、執行SQL指令，取出資料

                //註解：執行SQL指令之後，把資料庫撈出來的結果，交由畫面上 DropDownList控制項來呈現。
                tw_city.DataValueField = "city_id";        //在此輸入的是資料表的欄位名稱
                tw_city.DataTextField = "city_name";      //在此輸入的是資料表的欄位名稱

                tw_city.DataSource = ds.Tables["t_city"].DefaultView;
                tw_city.DataBind();

                //鄉鎮市區
                int area_chooseval = Convert.ToInt32(tw_city.SelectedValue);
                string sql_area = "select*from [BasicDB].[dbo].[taiwan_area] where city_id='" + area_chooseval.ToString() + "'";
                SqlDataAdapter area = new SqlDataAdapter(sql_area, connstr);
                area.Fill(ds, "t_area");     //第二、執行SQL指令，取出資料

                //註解：執行SQL指令之後，把資料庫撈出來的結果，交由畫面上 DropDownList控制項來呈現。
                tw_area.DataValueField = "city_id";        //在此輸入的是資料表的欄位名稱
                tw_area.DataTextField = "area_name";      //在此輸入的是資料表的欄位名稱

                tw_area.DataSource = ds.Tables["t_area"].DefaultView;
                tw_area.DataBind();
            }
        }
        protected void tw_city_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SQL連線
            string connstr = ConfigurationManager.AppSettings["conStr"];
            SqlConnection sqlCon = new SqlConnection(connstr);

            //鄉鎮市區
            int area_chooseval = Convert.ToInt32(tw_city.SelectedValue);
            string sql_area = "select*from [BasicDB].[dbo].[taiwan_area] where city_id='" + area_chooseval.ToString() + "'";
            SqlDataAdapter area = new SqlDataAdapter(sql_area, connstr);
            DataSet ds = new DataSet();
            area.Fill(ds, "t_area");     //第二、執行SQL指令，取出資料

            //註解：執行SQL指令之後，把資料庫撈出來的結果，交由畫面上 DropDownList控制項來呈現。
            tw_area.DataValueField = "city_id";        //在此輸入的是資料表的欄位名稱
            tw_area.DataTextField = "area_name";      //在此輸入的是資料表的欄位名稱

            txt_secret1.Attributes.Add("value", txt_secret1.Text);
            txt_secrec2.Attributes.Add("value", txt_secrec2.Text);

            tw_area.DataSource = ds.Tables["t_area"].DefaultView;
            tw_area.DataBind();
        }
        protected void btn_send_Click(object sender, EventArgs e)
        {
            string msg_a = "", msg_b = "", msg_c = "", msg_d = "", msg_e = "", msg_f = "",msg_g="";
            if (txt_address.Text == "")
            {
                msg_a = "*地址不可空白";
            }
            if (txt_mail.Text == "")
            {
                msg_b = "*信箱不可空白";
            }
            if (txt_name.Text == "")
            {
                msg_c = "*會員姓名不可空白";
            }
            if (txt_phone.Text == "")
            {
                msg_d = "*手機號碼不可空白";
            }
            if (txt_secret1.Text == "")
            {
                msg_e = "*請輸入密碼";
            }
            if (txt_secrec2.Text == "")
            {
                msg_e = "*請輸入密碼";
            }
            if (txt_secret1.Text != txt_secrec2.Text)
            {
                msg_f = "*密碼不一致，請重新輸入";
                txt_secret1.Text = "";
                txt_secrec2.Text = "";
            }
            if (txt_secret1.Text.Length <= 7&&txt_secret1.Text!=""&&txt_secrec2.Text!="")
            {
                msg_g = "*密碼必須大於8個字元";
                txt_secret1.Text = "";
                txt_secrec2.Text = "";
            }
            lab_error.Text = msg_a.ToString() + "</br>" + msg_b.ToString() + "</br>" + msg_c.ToString() + "</br>" + msg_d.ToString() + "</br>" + msg_e.ToString() + "</br>" + msg_f.ToString() + "</br>"+msg_g.ToString();

            if (txt_address.Text != "" && txt_mail.Text != "" && txt_name.Text != "" && txt_phone.Text != "" && txt_secrec2.Text != "" && txt_secret1.Text != "")
            {
                if (chk_inf.Checked == false)
                {
                    MessageBox.Show("如以上資訊正確請勾選<我以上資訊皆填寫正確>");
                    txt_secret1.Attributes.Add("value", txt_secret1.Text);
                    txt_secrec2.Attributes.Add("value", txt_secrec2.Text);
                }
                else
                {
                    //SQL連線
                    string connstr = ConfigurationManager.AppSettings["conStr"];
                    SqlConnection sqlCon = new SqlConnection(connstr);

                    //產生流水號
                    string sql_flow = "select max=max(pid) from customer";
                    DataTable dt = new DataTable();
                    dt = sql_get(sql_flow, connstr);
                    int a =Convert.ToInt32(dt.Rows[0]["max"].ToString())+1;
                    string result ="A"+a.ToString("000000");

                    //會員資料存入
                    string sql_insert = "insert into customer (cus_no,cus_name,cus_mail,cus_tel,cus_address) values ('"+result+"','"+txt_name.Text+"','"+txt_mail.Text+"','"+txt_phone.Text+"','"+tw_city.SelectedItem+tw_area.SelectedItem+txt_address.Text+"')";
                    string sql_pw = "insert into cus_pw (cus_no,cus_pw) values ('"+result+"','"+txt_secret1.Text+"')";
                    dt = sql_get(sql_insert, connstr);
                    dt = sql_get(sql_pw, connstr);

                    //msgbox加入會員提示
                    Response.Write("<script>alert('歡迎您加入小農之家!'); location.href='index.aspx'; </script>");
                }
            }
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
