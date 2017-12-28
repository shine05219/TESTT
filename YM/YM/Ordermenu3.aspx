<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ordermenu3.aspx.cs" Inherits="Ordermenu3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style/buttons/login/css/buttons.css" />
    <link rel="icon" type="image/icon" href="Image/Yummyv2.ico" />

       <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/trontastic/jquery-ui.css"/>
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#datepicker1").datepicker();
          $("#datepicker2").datepicker();
          $("#datepicker3").datepicker();
          $("#datepicker4").datepicker();
          $("#datepicker5").datepicker();
          $("#datepicker6").datepicker();
      });
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="Style/buttons/login/js/buttons.js"></script>
    <style type="text/css">
        .table{
              position:absolute;
         top:50%;
         left:20%
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

        
        .tabs{      position:relative;      width:838px;      
height:532px;
            top:  50px;
            left: 200px; }    
        .tab{      float:left;  }    .tab > input[type=radio]{      display:none;  }   
        .tab > label{  display:block; position:relative;   min-width:40px;   height:20px;  margin-right:-1px;    padding:5px 15px;      background:#DDD;      border:1px solid #AAA;  }    .tab > .content{      display:none;      position:absolute;      top:30px;      right:0;      bottom:0;      left:0;      z-index:1;      padding:10px;      background:#FFF;      border:1px solid #AAA;  }    .tab > input[type=radio]:checked + label{      background:#FFF;      border-bottom:1px solid transparent;      z-index:2;  }    .tab > input[type=radio]:checked ~ .content{      display:block;      }
 
        

        .xx {
            right:10%;
            bottom:20%;
            position: absolute;
        }
        .img {
            position: absolute;
            top: 1.5%;
            right: 3%;
        }
        .bt1 {background:    #cfe2f3;
background:    -webkit-linear-gradient(#cfe2f3, #666666);
background:    linear-gradient(#cfe2f3, #666666);
border:        2px solid #556699;
border-radius: 7px;
padding:       8px 20px;
color:         #ffffff;
display:       inline-block;
font:          normal 400 24px/1 "Zenhei", sans-serif;
text-align:    center;
text-shadow:   1px 1px #000000;
        }
          
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
        


        </style>
    <title></title>
</head>
<body >
     
    <form id="form1" runat="server">
        <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="bg001">
      <div style="position:relative;" class="bg001">
         <div style="display:table; position:relative;margin:0px auto;width:100%;height:100%" >
    <div style="width:100%;height:auto">
    <asp:Image ID="yummytitle" runat="server" src="Image/yummytitle.png" style="height:70px;padding-left:10px;padding-top:10px" />
        </div> <br />
        <div style="width:100%;height:auto">
             <ul>
                 <li class="active"><a href="Ordermenu.aspx">首頁</a></li>
                 <li><a href="Ordermenu3.aspx">訂單管理</a></li>
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
         
             
             
             </div><div style="text-align:right">    

            

             </div>
        
       
         <asp:Image ID="Image1" runat="server" Height="119px" Width="176px" ImageUrl="Image/Yummy.png" CssClass="img" />
         <br />
         
       
         <div class="tabs">        <div class="tab">         
            
             <input type="radio" id="tab1" name="tabs" checked="checked"/>          
            <label for="tab1">未完成訂單</label> 


        <div class="content" style="text-align:center"> 
               <asp:Label ID="Label2" runat="server" Text="未完成訂單"></asp:Label><br /><br />
             <asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>
             &nbsp; -&nbsp;
             <asp:TextBox ID="datepicker2" runat="server" ></asp:TextBox>
          &nbsp;<asp:Button ID="Button6" runat="server"  Text="查詢" /><br /><br />
            
            <div style="text-align:right">
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-DJ3IU0D;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="5">
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
                  <asp:Button ID="Button8" runat="server" CssClass="xx" Text="返回" Font-Size="Medium" OnClick="Button14_Click" />
            </div>
         </div></div>
             

              <div class="tab">          <input type="radio" id="tab2" name="tabs"/>        
                  <label for="tab2">已完成訂單</label>         
                 <div class="content">
                     
                     <div style="text-align:left">
<asp:Label ID="Label4" runat="server" Text="今日日期 : "></asp:Label>
                     <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                     </div>


                    <div style="text-align:center"> <asp:Label ID="Label3" runat="server" Text="已完成訂單"></asp:Label><br /><br />

                  
             <asp:TextBox ID="datepicker3" runat="server"></asp:TextBox>
             &nbsp; -&nbsp;
             <asp:TextBox ID="datepicker4" runat="server" ></asp:TextBox>
          &nbsp;<asp:Button ID="Button9" runat="server"  Text="查詢" /><br /><br />  </div>
                     <div style="text-align:right">
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=DESKTOP-DJ3IU0D;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
       
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ID" DataSourceID="SqlDataSource3" HorizontalAlign="Center" PageSize="5">
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
               
            </Columns>
        </asp:GridView>
                         
                          <asp:Button ID="Button10" runat="server" CssClass="xx" Text="返回" Font-Size="Medium" OnClick="Button14_Click" />
                     </div>
                     

                 </div>  </div>
             <div class="tab"> 

         <input type="radio" id="tab3" name="tabs"/>        
       <label for="tab3">未取餐訂單</label>          <div class="content" style="text-align:center">


              <asp:Label ID="Label6" runat="server" Text="未取餐訂單"></asp:Label><br /><br />
             <asp:TextBox ID="datepicker5" runat="server"></asp:TextBox>
             &nbsp; -&nbsp;
             <asp:TextBox ID="datepicker6" runat="server" ></asp:TextBox>
          &nbsp;<asp:Button ID="Button11" runat="server"  Text="查詢" /><br /><br />
             <br /> <div style="text-align:right">
                     
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-DJ3IU0D;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
      
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ID" DataSourceID="SqlDataSource2" HorizontalAlign="Center" PageSize="5">
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
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>

                  <asp:Button ID="Button13" runat="server" CssClass="xx" Text="返回" Font-Size="Medium" OnClick="Button14_Click" />
                                 
        <br />                          

        <div style="text-align:right">         
                                   
                     </div></div>              
               </div>    
            </div> </div></div>
        </div> 
          </form>   
      


    
</body>
</html>
