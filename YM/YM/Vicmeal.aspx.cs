using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vicmeal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Ordermenu.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("InsertVicmeal.aspx");
    }

    protected void GridView4_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header || e.Row.RowType == DataControlRowType.DataRow)
        {
            //要隱藏的欄位    
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[4].Visible = false;
            e.Row.Cells[7].Visible = false;
        }
    }
}