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

  

   

    protected void Button5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu3.aspx");
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Hotmeal.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Setmeal.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Vicmeal.aspx");
    }
}