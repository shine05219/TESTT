<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UnCompleteOrder.aspx.cs" Inherits="YM_UnCompleteOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <style type="text/css">
         ul {
            width:100%;
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #D2691E;
        }
        li {
            float: left;
            width:13%;
            text-align:center;
        }
        li a, .dropbtn{
            display: block;
            color: white;
            text-align: center;
            padding: 15px 15px;
            text-decoration: none;

        }
        .active {
            color: white;
            background-color: #A42D00;
        }

        li a:hover:not(.active) {
            background-color: #8B4513;

        }
        li.dropdown {
            display: inline-block;

        }
        .dropdown-content a {
            color: white;
            padding: 15px 15px;
            display: block;
            text-align: center;
        }
        
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #CD853F;
            min-width: 13%;
        }
  .xx {
            right:10%;
            bottom:20%;
            position: absolute;
        }
      .auto-style1 {
          position: relative;
          width: 100%;
          height: 728px;
          left: 0px;
          top: 0px;
      }
      .bg001{
            height: 100%;
            width:100%;
            max-width:100%;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="bg001">
      <div style="position:relative;" class="bg001">
         <div style="display:table; margin:0px auto;" class="auto-style1" >
    <div style="width:100%;height:auto">
    <asp:Image ID="yummytitle" runat="server" src="Image/yummytitle.png" style="height:70px;padding-left:10px;padding-top:10px" />
        </div> <br />
        <div style="width:100%;height:auto">
             <ul>
                 <li class="active"><a href="Ordermenu.aspx">首頁</a></li>
                 <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">訂單管理</a>
                     <div class="dropdown-content">
                         <a href="UnCompleteOrder.aspx">未完成訂單</a>
                         <a href="CompleteOrder.aspx">已完成訂單</a>
                         <a href="UntakeOrder.aspx">未取餐訂單</a>
                     </div>

                 </li>
                 <li><a href="Member.aspx">儲值管理</a></li>
                 <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">菜單管理</a>
                     <div class="dropdown-content">
                         <a href="Hotmeal.aspx">熱門套餐</a>
                         <a href="setmeal.aspx">主餐</a>
                         <a href="Vicmeal.aspx">副餐</a>
                     </div>
                 </li>
                 <li><a href="FinMenu.aspx">帳務管理</a></li>
                 <li><a href="#">消息管理</a></li>
                 <li style="float:right"><a href="Default.aspx">登出</a></li>
             </ul>
         </div>
    <div><div style="text-align:left ;font-size:x-large ; font-family:DFKai-SB">
<asp:Label ID="Label4" runat="server" Text="今日日期 : " ForeColor="#000099"></asp:Label>
                     <asp:Label ID="Label5" runat="server" ForeColor="#000099"></asp:Label>
                     </div><br />
     <div class="content" style="text-align:center ; font-family: Microsoft JhengHei;"> 
               <asp:Label ID="Label2" runat="server" Text="未完成訂單" Font-Size="XX-Large"></asp:Label><br /><br />
             <asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>
             &nbsp; -&nbsp;
             <asp:TextBox ID="datepicker2" runat="server" ></asp:TextBox>
          &nbsp;<asp:Button ID="Button6" runat="server"  Text="查詢" /><br /><br />
            
            <div style="text-align:right">
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="5" Height="294px" Width="913px">
            <Columns>
                <asp:BoundField DataField="OrderTime" HeaderText="顧客取餐時間" SortExpression="OrderTime">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" ForeColor="#3333CC" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="OrderID" HeaderText="客戶編號" SortExpression="OrderID">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="品名" SortExpression="ProductName">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PaymentMethod" HeaderText="交易方式" SortExpression="PaymentMethod">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField Text="已取餐" />
            </Columns>
        </asp:GridView>
            </div>
         </div></div></div></div></div>
    
    </form>
</body>
</html>