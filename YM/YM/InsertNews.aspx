<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertNews.aspx.cs" Inherits="YM_InsertNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <style type="text/css">
          
        .auto-style2 {
             width: 300px;
            height: 200px;
margin-left:auto; 
margin-right:auto;
        }
      
       
        .auto-style3 {
            height: 161px;
        }
         .btn {
              
  background: #6689a1;
  background-image: -webkit-linear-gradient(top, #6689a1, #2c98db);
  background-image: -moz-linear-gradient(top, #6689a1, #2c98db);
  background-image: -ms-linear-gradient(top, #6689a1, #2c98db);
  background-image: -o-linear-gradient(top, #6689a1, #2c98db);
  background-image: linear-gradient(to bottom, #6689a1, #2c98db);
  -webkit-border-radius: 19;
  -moz-border-radius: 19;
  border-radius: 19px;
  -webkit-box-shadow: 0px 1px 3px #000000;
  -moz-box-shadow: 0px 1px 3px #000000;
  box-shadow: 0px 1px 3px #000000;
  font-family: Courier New;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  border: solid #04537a 3px;
  text-decoration: none;
}
       .auto-style5 {
           width: 230px;
       }
    </style>

</head>
<body bgcolor="#F5DEB3" style="height: 677px">
    <form id="form1" runat="server">
    <div style="text-align:center;background-color:ghostwhite">
    <asp:Label ID="Label1" runat="server" Text="新增消息" Font-Size="XX-Large" ForeColor="#3366FF" Font-Bold="True" Font-Names="微軟正黑體"></asp:Label>
    </div><br />
        <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="bg001">
        <table border="1" class="auto-style2">
          <tr> 
              <td>
                  <asp:Label ID="Label2" runat="server" Text="消息新增 : " Font-Names="微軟正黑體"></asp:Label>
</td>


            </td>
          </tr> 

        <tr>
            <td>
                   <asp:Label ID="Label3" runat="server" Text="消息 : " Font-Names="微軟正黑體"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="100px" Width="220px"></asp:TextBox>
            
            </td>
        </tr>
        </table>
        <div style="text-align:right">
            <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" Height="58px" Width="90px" class="btn"/>
            <asp:Button ID="Button2" runat="server" Text="返回" OnClick="Button2_Click" Height="58px" Width="90px" class="btn"/>

        </div></div>
    </form>
</body>
</html>
