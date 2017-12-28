<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="YM_News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
          .新增樣式1 {
            position: absolute;
            right: 50%;
        }
        .新增樣式2 {
            position: absolute;
            top: 35%;
            right:30%
        }
        .btn {
              position: absolute;
            right: 8%;
            
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
        .xx{
            position: absolute;
            right: 46%;
            top: 48px;
        }
        .TAB{height:auto;
             height:auto;
        }
         .auto-style4 {
            height: 856px;
            width: 100%;
            max-width: 100%;
            position: relative;
            left: 0px;
            top: 0px;
        }
        .auto-style5 {
            position: absolute;
            top: 35%;
            left: 20%;
            width: 831px;
            height: 318px;
        }
    </style>
    
</head>
<body  class="bg001">
   <form id="form1" runat="server">
    <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="bg001">
      <div class="auto-style4">
      
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
         
   
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [News] ORDER BY [Date] DESC" DeleteCommand="DELETE FROM [News] WHERE [ID] = @ID" InsertCommand="INSERT INTO [News] ([ID], [Date], [Message]) VALUES (@ID, @Date, @Message)" UpdateCommand="UPDATE [News] SET [Date] = @Date, [Message] = @Message WHERE [ID] = @ID">
          <DeleteParameters>
              <asp:Parameter Name="ID" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="ID" Type="Int32" />
              <asp:Parameter DbType="Date" Name="Date" />
              <asp:Parameter Name="Message" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter DbType="Date" Name="Date" />
              <asp:Parameter Name="Message" Type="String" />
              <asp:Parameter Name="ID" Type="Int32" />
          </UpdateParameters>
          </asp:SqlDataSource>
         <div style="text-align:left ;font-size:x-large ; font-family:DFKai-SB">
<asp:Label ID="Label4" runat="server" Text="今日日期 : " ForeColor="#000099"></asp:Label>
                     <asp:Label ID="Label5" runat="server" ForeColor="#000099"></asp:Label>
                     </div>
        <div style="text-align:center ; font-family:Microsoft JhengHei">
      <asp:Label ID="Label1" text-aligen="center" runat="server" Font-Size="XX-Large" Text="最新消息" Font-Bold="True" ForeColor="#0066FF" ></asp:Label>
      
       <br/>
    
          
        
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" CssClass="auto-style5">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="日期" SortExpression="Date" DataFormatString="{0:d}">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="訊息" SortExpression="Message">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Height="36px" Text='<%# Bind("Message") %>' Width="237px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" HeaderText="編輯" />
                <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" onclientclick="return confirm('確定要刪除嗎？')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
      
            <asp:Button ID="Button1" runat="server" class="btn" OnClick="Button1_Click" Text="新增消息" />
      
    </div></div></div>
    </form>
</body>
</html>
