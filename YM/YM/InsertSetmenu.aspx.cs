using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class YM_InsertSivmenu : System.Web.UI.Page
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
        cmd = new SqlCommand("INSERT INTO SetMeal (name,price,quantity,introduction,pictures,remarks) VALUES(@name,@price,@quantity, @introduction, @pictures,@remarks)", conn);
        cmd.Parameters.Add("@name", SqlDbType.NVarChar, 10).Value = TextBox1.Text;
        cmd.Parameters.Add("@price", SqlDbType.Int).Value = TextBox2.Text;
        cmd.Parameters.Add("@quantity", SqlDbType.Int).Value = 200;
        cmd.Parameters.Add("@pictures", SqlDbType.VarChar, 100).Value = "http://140.137.61.164:8888/Image/" + FileUpload1.FileName;
        cmd.Parameters.Add("@introduction", SqlDbType.NVarChar, 50).Value = TextBox5.Text;
        cmd.Parameters.Add("@remarks", SqlDbType.NVarChar, 50).Value = "";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn.Close();
        conn.Dispose();

        if (FileUpload1.HasFile)
        {
            String fileName = FileUpload1.FileName;
            String savePath = "c:\\inetpub\\wwwroot\\YM\\YM\\Image\\";
            String saveResult = savePath + fileName;
            FileUpload1.SaveAs(saveResult);
        }

        Response.Redirect("Setmeal.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Setmeal.aspx");
    }

}