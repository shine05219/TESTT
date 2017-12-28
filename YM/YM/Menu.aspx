<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .css1 {
            position: absolute;
            right: 10%;
            bottom:20%
        }
        .css2 {
            position: absolute;
           right: 15%;
            top: 30%;
        }
        .css3 {
            position: absolute;
            right:40%;
            top: 30%;
        }
        .css4 {
            position: absolute;
            right: 70%;
            top: 30%;
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
      
        div.container {border: 2px dashed #333;background-color: #ffe;}
      div.spacer {clear: both;}
      div.float {float: left;}
div.float p {text-align: center;}

        </style>
</head>
<body class="bg001" >
     
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
             <br />
    <div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="菜單管理" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF" Font-Names="微軟正黑體"></asp:Label>
    </div><br />
         <div class="container" style="margin:0px auto;" ><div class="spacer" style="margin:0px auto;">
           &nbsp;
</div>
               <span style="text-align:center"> <div class="float" style="width:300px"> <asp:Image ID="Image1" runat="server" Height="173px" ImageUrl="~/YM/Image/A22.jpg" Width="231px" /><br /><asp:Button ID="Button1" class="btn" runat="server" Text="熱門套餐" Height="67px" Width="222px" OnClick="Button1_Click1" /></div> 
         <div class="float"  style="width:300px"><asp:Image  ID="Image2" runat="server" Height="173px" ImageUrl="~/YM/Image/A01.jpg" Width="231px" /><br /><asp:Button ID="Button2" class="btn" runat="server" Text="主餐" Height="67px" Width="222px" OnClick="Button2_Click" /></div> 
        <div class="float"  style="width:300px"> <asp:Image  ID="Image3" runat="server" Height="173px" ImageUrl="~/YM/Image/B09.jpg" Width="231px" /><br /><asp:Button ID="Button3" class="btn" runat="server" Text="副餐" Height="67px" Width="222px" OnClick="Button3_Click" /></div>  
          </span>   <div class="spacer">
  &nbsp;
</div>
             </div>       




         


             </div></div>



    </form>

             
</body>
</html>
