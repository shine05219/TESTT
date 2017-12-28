using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class YM_InsertNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection
            ("Data Source =140.137.61.164; Initial Catalog = yummy ; User Id = student ; Password = student");
        SqlCommand cmd = null;
        conn.Open();

        cmd = new SqlCommand("INSERT INTO News (date,message) VALUES(@date,@message)", conn);
        cmd.Parameters.Add("@date", SqlDbType.Date).Value = DateTime.Today.ToString();
        cmd.Parameters.Add("@message", SqlDbType.NVarChar, 50).Value = TextBox1.Text;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn.Close();
        conn.Dispose();

        Response.Redirect("News.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("News.aspx");
    }
}