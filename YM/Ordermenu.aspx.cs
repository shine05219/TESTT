using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ordermenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu3.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Member.aspx");
    }

    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }

    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("FinStst.aspx");
    }

    protected void ListView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}