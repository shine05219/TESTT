<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .css1 {
            position: absolute;
            left: 75%;
            bottom: 20%;
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
        .bg001{
            height: 100%;
            width:100%;
            max-width:100%;
        }
        .css2 {
            position: absolute;
            left: 85%;
            bottom: 20%;
        }
        .auto-style1 {
            position: absolute;
            left: 25%;
            top: 40%;
            width: 499px;
            height: 225px;
        }
        .auto-style2 {
            height: 888px;
            width: 100%;
            max-width: 100%;
        }
        .auto-style3 {
            position: relative;
            left: 0px;
            top: 0px;
            height: 854px;
        }
        </style>
</head>
<body  class="bg001">
    
    <form id="form2" runat="server">
         <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="auto-style2">
          
   
      <div class="auto-style3">
         <div style="width:100%;height:auto">
             <asp:Image ID="yummytitle" runat="server" src="Image/yummytitle.png" style="height:70px;padding-left:10px;padding-top:10px" />
         </div>
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
         
    <br/><br /><br /><br /><br /><br />
     <div style="text-align:center ; font-family:Microsoft JhengHei">
      <asp:Label ID="Label1" text-aligen="center" runat="server" Font-Size="XX-Large" Text="會員資料" Font-Bold="True" ForeColor="#0066FF" ></asp:Label>
      
         <br /> <br />
        <table class="auto-style1">
            <tr>
                <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="654px" OnRowCommand="GridView1_SelectedIndexChanged" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="231px" >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="編號" SortExpression="ID" ReadOnly="True" />
                <asp:BoundField DataField="Phone" HeaderText="手機號碼" SortExpression="Phone" />
                <asp:ButtonField HeaderText="儲值功能" Text="加值">
                <ItemStyle HorizontalAlign="Center" />
                </asp:ButtonField>
            </Columns>
            <FooterStyle Font-Names="微軟正黑體" />
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
                </td>

               
                </tr>
                </table>   
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>




          
         



        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Balance], [DepositAmount] FROM [Deposit]"></asp:SqlDataSource>

        </div></div></div>
          </form>
    
</body>
</html>
