﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Mail;
using System.Net;
using System.Web.UI.WebControls;



public partial class _Default : System.Web.UI.Page
{
    String FPW;
    protected void Page_Load(object sender, EventArgs e)
    {
        FPW = TextBox1.Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

      
         
        }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}



