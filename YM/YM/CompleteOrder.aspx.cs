using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YM_CompleteOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = DateTime.Today.ToString("yyyy/MM/dd");
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu.aspx");
    }
}