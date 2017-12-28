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


        .css1 {
            position: absolute;
            right: 10%;
            bottom: 10%;
        }


         .img {
            position: absolute;
            top: 2%;
            right: 10%;
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
            .auto-style1 {
            height: 100vh;
            position: relative;
           
            
        }
        .auto-style2 {
            width: 413px;
            height: 364px;
        }
        .auto-style3 {
            width: 461px;
            height: 364px;
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
        .auto-style4 {
            position: absolute;
            top: -2147483648%;
            right: 10%;
        }
        </style>
</head>
<body class="bg001" >
    <form id="form1" runat="server">
         
    <div>
     
       
        <hr />
       
         <asp:Image ID="Image1" runat="server" Height="119px" Width="176px" ImageUrl="Image/Yummy.png" CssClass="auto-style4" />
         <br />
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
        <br />
             <div style="text-align:center ; font-family:Microsoft JhengHei">
      <asp:Label ID="Label1" text-aligen="center" runat="server" Font-Size="XX-Large" Text="帳務管理" Font-Bold="True" ForeColor="#0066FF" ></asp:Label>
      </div>
        <br />
       


        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <div style="top:auto"><asp:Label ID="Label2" runat="server" Text="餐點統計" Font-Size="X-Large" Font-Bold="True" ForeColor="#0066FF" Font-Names="微軟正黑體"></asp:Label></div>
                    <div style="text-align:center">
                        <asp:Label ID="Label4" runat="server" Text="剩餘餐點" Font-Bold="True" ForeColor="#CC0099" Font-Names="微軟正黑體"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name], [No], [Quantity], [Price] FROM [HotDessert]"></asp:SqlDataSource>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="No" DataSourceID="SqlDataSource1" GroupItemCount="3">
                            <AlternatingItemTemplate>
                                <td runat="server" style="background-color: #FAFAD2;color: #284775;">Name:
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    <br />
                                    No:
                                    <asp:Label ID="NoLabel" runat="server" Text='<%# Eval("No") %>' />
                                    <br />
                                    Quantity:
                                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                    <br />
                                </td>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <td runat="server" style="background-color: #FFCC66;color: #000080;">Name:
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    <br />
                                    No:
                                    <asp:Label ID="NoLabel1" runat="server" Text='<%# Eval("No") %>' />
                                    <br />
                                    Quantity:
                                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                                    <br />
                                    Price:
                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                    <br />
                                </td>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>未傳回資料。</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
                                <td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <InsertItemTemplate>
                                <td runat="server" style="">Name:
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    <br />
                                    No:
                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                    <br />
                                    Quantity:
                                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                                    <br />
                                    Price:
                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                    <br />
                                </td>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <td runat="server" style="background-color: #FFFBD6;color: #333333;">Name:
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    <br />
                                    No:
                                    <asp:Label ID="NoLabel" runat="server" Text='<%# Eval("No") %>' />
                                    <br />
                                    Quantity:
                                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">Name:
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    <br />
                                    No:
                                    <asp:Label ID="NoLabel" runat="server" Text='<%# Eval("No") %>' />
                                    <br />
                                    Quantity:
                                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                    <br />
                                </td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                    </div>

                </td>
                <td class="auto-style2">

                    <asp:Label ID="Label5" runat="server" Text="金額統計" Font-Size="X-Large" Font-Bold="True" ForeColor="#0066FF" Font-Names="微軟正黑體"></asp:Label>
                    <br />
                     <asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>
      &nbsp; -&nbsp;
      <asp:TextBox ID="datepicker2" runat="server" ></asp:TextBox>
                 
                     <asp:Button ID="Button1" runat="server"  Text="查詢" /><br /><br />

                     <div style="top:auto"></div>
                    <asp:TextBox ID="TextBox1" runat="server" Height="191px" Width="321px" OnTextChanged="TextBox1_TextChanged">今日盈餘:8000</asp:TextBox>
                </td>

            </tr>
            

        </table>


             </div></div></div>
    </div>
             
    </form>
  
</body>
</html>
