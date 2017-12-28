<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinMenu.aspx.cs" Inherits="Ordermenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .table{
              position:absolute;
         top:40%;
         left:20%
        }


        .auto-style1 {
            position: absolute;
            top: 40%;
            left: 18%;
            width: 788px;
            height: 437px;
        }


    </style>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
    <div>
     <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="亞米早餐" Font-Bold="True" ForeColor="Blue"></asp:Label>
         <div style="text-align:right"><asp:Button ID="Button5" runat="server" Text="登出" /></div>
        <hr />
       
         <asp:Image ID="Image1" runat="server" Height="119px" Width="176px" ImageUrl="/Image/去背.png" />
         <br />
        <asp:Button ID="Button1" runat="server" Text="訂單" Width="120px" Height="37px" OnClick="Button1_Click1" ForeColor="Black" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="儲值" Width="120px" Height="37px" OnClick="Button2_Click1"  />
        <br />
        <asp:Button ID="Button3" runat="server" Text="菜單" Width="120px" Height="37px" OnClick="Button3_Click1" />    
        <br />    
        <asp:Button ID="Button4" runat="server" Text="帳務管理" Width="120px" Height="37px" OnClick="Button4_Click1"/>


        <table border="1" class="auto-style1">
            <tr>
                <td>
                    <div style="top:auto"><asp:Label ID="Label2" runat="server" Text="餐點統計" Font-Size="X-Large" Font-Bold="True" ForeColor="#0066FF"></asp:Label></div>
                    <div style="text-align:center">
                        <asp:Label ID="Label4" runat="server" Text="本周餐點排行" Font-Bold="True" ForeColor="#CC0099"></asp:Label></div>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"></asp:ListView>

                </td>
                <td>
                     <div style="top:auto"><asp:Label ID="Label3" runat="server" Text="金額統計" Font-Size="X-Large" Font-Bold="True" ForeColor="#0066FF"></asp:Label></div>
                    <asp:TextBox ID="TextBox1" runat="server" Height="191px" Width="321px"></asp:TextBox>
                </td>

            </tr>
            

        </table>



    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
