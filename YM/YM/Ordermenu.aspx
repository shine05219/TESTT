<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ordermenu.aspx.cs" Inherits="Ordermenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="bg001">
<head runat="server">
    <title>亞米早點平台</title>
    <link rel="stylesheet" href="Style/buttons/login/css/buttons.css" />
    <link rel="icon" type="image/icon" href="Image/Yummyv2.ico" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="Style/buttons/login/js/buttons.js"></script>
    <style type="text/css">
        .bg001{
            height: 100%;
            width:100%;
            max-width:100%;
        }
        .bg002{
            width:100%;
            max-width:100%;
            height:100%;
            vertical-align:middle;
            text-align: center;
            margin:0px auto;
            display:inline-block;
        }
        .bg003{
            table-layout:fixed;
            width:100%;
            max-width:100%;
            height:100%;
        }
        

        .title01{
            font-size:XX-Large;
            font-weight: bold;
            color:Blue;
            font-family:Microsoft JhengHei;
            text-align:left;
            line-height:100px;
        }
        .table{
            position:absolute;
            top:40%;
            left:20%
        }

        
        .bt1 {
            background:    #cfe2f3;
            background:    -webkit-linear-gradient( #666666);
            background:    linear-gradient( #666666);
            border-radius: 7px;
            padding:       8px 20px;
            color:         #ffffff;
            display:       inline-block;
            font:          normal 400 24px/1 "Zenhei", sans-serif;
            text-align:    center;
            text-shadow:   1px 1px #000000;
        }
          .divbg1{
            background-color:  #FFCC99;
            width:100%;
        }

        .img {
            position: absolute;
            top: -2147483648px;
            right: 10%;
        }

          .bg1 {
            position: absolute;
            top: 45%;
            left:5%
        }
        


        .bg2 {
            position: absolute;
            top: 40%;
        }
        .bg3 {
            position: absolute;
            top: 60%;
            right:0;
        }

        .auto-style1 {
            width: 321px;
        }
        .auto-style2 {
            height: 230px;
            width: 352px;
        }
        .auto-style3 {
            width: 352px;
        }
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
    </style>
</head>
<body class="bg001">
    
    <form id="form1" runat="server">
          
    <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="bg001">
      <div style="position:relative;" class="bg001">
         <div style="display:table; position:relative;margin:0px auto;width:100%;height:100%" >
         <div style="width:100%;height:auto">
             <asp:Image ID="yummytitle" runat="server" src="Image/yummytitle.png" style="height:70px;padding-left:10px;padding-top:10px" />
         </div>
         <br />
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
                 <li><a href="News.aspx">消息管理</a></li>
                 <li style="float:right"><a href="Default.aspx">登出</a></li>
             </ul>
         </div>
         </div>
             <div class="bg002">
                 <table class="bg003">
            <tr style="width:100%;height:400px">
                <td style="width:50%; ">
                        <asp:Label ID="Label2" runat="server" Text="訂單" Font-Bold="True" ForeColor="SaddleBrown" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Names="微軟正黑體" HorizontalAlign="Center" AllowPaging="True" PageSize="5" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BorderStyle="None" >
                            <Columns>
                                <asp:BoundField DataField="OrderTime" HeaderText="取餐時間" SortExpression="OrderTime" >
                                <FooterStyle Font-Names="微軟正黑體" />
                                <HeaderStyle BackColor="#DDDDDD" ForeColor="#333333" Height="30px" Width="130px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="OrderID" HeaderText="會員編號" SortExpression="OrderID" >
                                <FooterStyle Font-Names="微軟正黑體" />
                                <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ProductName" HeaderText="產品名稱" SortExpression="ProductName" >
                                <FooterStyle Font-Names="微軟正黑體" />
                                <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity" >
                                <FooterStyle Font-Names="微軟正黑體" />
                                <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="70px" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [OrderTime], [OrderID], [ProductName], [Quantity] FROM [Order]"></asp:SqlDataSource>
                </td>
                <td style="width:50%">
                    <asp:Label ID="Label3" runat="server" Text="儲值" Font-Bold="True" ForeColor="SaddleBrown" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
                         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Font-Names="微軟正黑體" HorizontalAlign="Center" AllowPaging="True" PageSize="5" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BorderStyle="None">
                             <Columns>
                                 <asp:BoundField DataField="DespositTime" HeaderText="會員加入日期" SortExpression="DespositTime" >
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="130px" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="DepositAmount" HeaderText="儲值金額" SortExpression="DepositAmount" >
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="80px" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="ID" HeaderText="會員編號" ReadOnly="True" SortExpression="ID" >
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="70px" />
                                 </asp:BoundField>
                             </Columns>
                             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                             <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                             <SortedDescendingHeaderStyle BackColor="#242121" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DespositTime], [DepositAmount], [ID] FROM [Deposit]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr style="width:100%;height:400px">
                <td style="width:50%">
                     <asp:Label ID="Label4" runat="server" Text="菜單" Font-Bold="True" ForeColor="SaddleBrown" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
                     <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowPaging="True" DataKeyNames="No" PageSize="5" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BorderStyle="None">
                         <Columns>
                             <asp:BoundField DataField="Name" HeaderText="餐點名稱" SortExpression="Name" >
                             <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="100px" Font-Names="微軟正黑體" />
                             </asp:BoundField>
                             <asp:BoundField DataField="No" HeaderText="編號" SortExpression="No" ReadOnly="True" >
                             <FooterStyle Font-Names="微軟正黑體" />
                             <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="70px" Font-Names="微軟正黑體" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Introduction" HeaderText="餐點介紹" SortExpression="Introduction" >
                             <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="130px" Font-Names="微軟正黑體" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Price" HeaderText="單價" SortExpression="Price" >
                             <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="70px" Font-Names="微軟正黑體" />
                             </asp:BoundField>
                             <asp:ImageField DataImageUrlField="Pictures" HeaderText="圖片" SortExpression="Pictures">
                                 <ControlStyle Height="40px" Width="40px" />
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="50px" Font-Names="微軟正黑體" />
                             </asp:ImageField>
                         </Columns>
                         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                         <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                         <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                         <SortedAscendingCellStyle BackColor="#F7F7F7" />
                         <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                         <SortedDescendingCellStyle BackColor="#E5E5E5" />
                         <SortedDescendingHeaderStyle BackColor="#242121" />
                     </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [HotDessert]"></asp:SqlDataSource>
                </td>
                <td style="width:50%">
                         <asp:Label ID="Label5" runat="server" Text="帳務" Font-Bold="True" ForeColor="SaddleBrown" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
                         <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSource4" Font-Names="微軟正黑體" AllowPaging="True" PageSize="5" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BorderStyle="None">
                             <Columns>
                                 <asp:BoundField DataField="No" HeaderText="排名" ReadOnly="True" SortExpression="No" >
                                 <FooterStyle Font-Names="微軟正黑體" ForeColor="#CC6600" />
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="70px" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Name" HeaderText="名稱" SortExpression="Name" >
                                 <FooterStyle Font-Names="微軟正黑體" ForeColor="#CC6600" />
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="100px" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity" >
                                 <FooterStyle Font-Names="微軟正黑體" ForeColor="#CC6600" />
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="70px" />
                                 </asp:BoundField>
                                 <asp:BoundField DataField="Price" HeaderText="價格" SortExpression="Price" >
                                 <FooterStyle Font-Names="微軟正黑體" ForeColor="#CC6600" />
                                 <HeaderStyle ForeColor="#333333" BackColor="#DDDDDD" Height="30px" Width="70px" />
                                 </asp:BoundField>
                             </Columns>
                             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                             <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                             <SortedDescendingHeaderStyle BackColor="#242121" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [No], [Name], [Quantity], [Price] FROM [SetMeal]"></asp:SqlDataSource>
                     <div style="height:30%;width:100%">
                         <asp:Label ID="Label6" runat="server" Text="金額統計" Font-Bold="True" ForeColor="#8B4513" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label>
                         <asp:TextBox ID="TextBox1" runat="server" Height="65px" Width="100%" style="text-align:center; line-height:65px;font-size:large;font-family:Microsoft JhengHei">今日盈餘:8000</asp:TextBox>
                     </div>

                </td>
            </tr>

        </table>
             </div>
      </div>

    </div>
   
</form>
        
   
         
             
</body>
</html>
