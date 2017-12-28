using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class YM_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = DateTime.Today.ToString("yyyy/MM/dd");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("InsertNews.aspx");
    }
}