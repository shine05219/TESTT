using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            if (FileUpload1.HasFile)
            {
                String fileName = FileUpload1.FileName;  //-- User上傳的檔名（不包含 Client端的路徑！）

                //*********************************************************************
                //*** 方法一 *****
                //-- 註解：先設定好檔案上傳的路徑，這是Web Server電腦上的硬碟「實體」目錄。
                //       C#語法在撰寫磁碟的目錄位置時，請留意以下的寫法：
                String savePath = "c:\\inetpub\\wwwroot\\YM\\Image\\";
                //String savePath = "c:\\Users\\student\\Desktop\\00000\\";

                String saveResult = savePath + fileName;
                //-- 重點！！必須包含 Server端的「目錄」與「檔名」，才能使用 .SaveAs()方法！
                FileUpload1.SaveAs(saveResult);

                Label1.Text = "<b>上傳成功</b>，檔名---- " + fileName;
                Label1.Text += "<br />路徑檔名---- " + savePath;
            }
            else
            {
                Label1.Text = "請先挑選檔案之後，再來上傳";
            }
        }
    }
}