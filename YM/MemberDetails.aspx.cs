using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int money = 0;
        bool result;

        if (!string.IsNullOrEmpty(TextBox2.Text))
        {
            result = int.TryParse(TextBox2.Text, out money);
            if (result)
            {
                if (money < 0)
                { Response.Write("<script>alert('輸入金額不得為負數!')</script>"); }
                else
                {
                    TextBox1.Text += "\n" + DateTime.Now + " , 儲值金額:NT$" + TextBox2.Text + " , 剩餘金額:NT$" + TextBox2.Text + "\n";
                }
            }
            else
            { //字串轉換失敗
                Response.Write("<script>alert('只限輸入阿拉伯數字!!')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('金額不得為空白!!!')</script>");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Member.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}