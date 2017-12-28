using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("InsertMenu.aspx");
    }
}