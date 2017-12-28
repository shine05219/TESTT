<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertMenu.aspx.cs" Inherits="ModifyMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          
        .auto-style2 {
             width: 752px;
            height: 425px;
margin-left:auto; 
margin-right:auto;
        }
      
       
        .auto-style3 {
            height: 161px;
        }
        .auto-style4 {
            width: 388px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="新增菜單" Font-Size="XX-Large" ForeColor="#3366FF" Font-Bold="True" Font-Names="微軟正黑體"></asp:Label>
    </div><br />

        <table border="1" class="auto-style2">
          <tr> 
              <td>
                  <asp:Label ID="Label2" runat="server" Text="編號 : " Font-Names="微軟正黑體"></asp:Label>
                  <asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="45px"></asp:TextBox>
              </td>
              <td rowspan="6" class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="圖片 : "></asp:Label>
                
                    <asp:Image ID="Image1" runat="server" Height="328px" ImageUrl="~/Image/亞米早餐.jpg" Width="300px" />

                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button3" runat="server" Text="Button" />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>

                </td>
              
          </tr> 

        <tr>
            <td>
                   <asp:Label ID="Label3" runat="server" Text="名稱 : " Font-Names="微軟正黑體"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="221px"></asp:TextBox>
            
            </td>
        </tr>

      <tr>
        <td>
              <asp:Label ID="Label4" runat="server" Text="價格 : " Font-Names="微軟正黑體"></asp:Label>
                   <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="221px"></asp:TextBox>
        </td>

      </tr>
      
        <tr>
            <td> 
                <asp:Label ID="Label5" runat="server" Text="優惠 : " Font-Names="微軟正黑體"></asp:Label>
                      <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="221px"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td>  
                <asp:Label ID="Label6" runat="server" Text="成本 : " Font-Names="微軟正黑體"></asp:Label>
                   <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="221px"></asp:TextBox>
            </td>

        </tr>
      <tr> 
          <td class="auto-style3">
              <asp:Label ID="Label8" runat="server" Text="說明 : " Font-Names="微軟正黑體"></asp:Label>
           <asp:TextBox ID="TextBox5" runat="server" Height="93px" Width="300px"></asp:TextBox>

      </td>
      </tr>
   
        </table>
        <div style="text-align:right">
            <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" Height="40px" Width="73px" />
            <asp:Button ID="Button2" runat="server" Text="返回" OnClick="Button2_Click" Height="40px" Width="73px" />

        </div>
     

           


    </form>
    
</body>
</html>
