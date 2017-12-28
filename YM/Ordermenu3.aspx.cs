using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ordermenu3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = DateTime.Today.ToString("yyyy/MM/dd");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu3.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("DepositDetails.aspx");
    }

    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }

    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("DepositDetails.aspx");
    }
    protected void Button10_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu.aspx");
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu.aspx");
    }
}