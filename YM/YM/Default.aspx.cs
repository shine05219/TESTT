using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "pccuu0123@gmail.com" && TextBox2.Text == "ppccuu0123")
            Response.Redirect("Ordermenu.aspx");
        else
        {
            Response.Write("<script>alert('帳號密碼錯誤!!');</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Deforget.aspx");
    }
}