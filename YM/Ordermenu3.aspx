<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ordermenu3.aspx.cs" Inherits="Ordermenu3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <style type="text/css">
        .table{
              position:absolute;
         top:40%;
         left:20%
        }
        .tabs{      position:relative;      width:838px;      
height:532px;
            top: -132px;
            left: 102px; }    
        .tab{      float:left;  }    .tab > input[type=radio]{      display:none;  }   
        .tab > label{  display:block; position:relative;   min-width:40px;   height:20px;  margin-right:-1px;    padding:5px 15px;      background:#DDD;      border:1px solid #AAA;  }    .tab > .content{      display:none;      position:absolute;      top:30px;      right:0;      bottom:0;      left:0;      z-index:1;      padding:10px;      background:#FFF;      border:1px solid #AAA;  }    .tab > input[type=radio]:checked + label{      background:#FFF;      border-bottom:1px solid transparent;      z-index:2;  }    .tab > input[type=radio]:checked ~ .content{      display:block;      }

        

        .xx {
            right:10%;
            bottom:20%;
            position: absolute;
        }

        

        </style>
    <title></title>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="亞米早餐" Font-Bold="True" ForeColor="Blue"></asp:Label>
         <div style="text-align:right">    

            

             <asp:Button ID="Button5" runat="server" Text="登出" /></div>
        <hr />
       
         <asp:Image ID="Image1" runat="server" Height="119px" Width="176px" ImageUrl="/Image/去背.png" />
         <br />
        <asp:Button ID="Button1" runat="server" Text="訂單" Width="96px" Height="37px" OnClick="Button1_Click1" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="儲值" Width="96px" Height="37px" OnClick="Button2_Click1"  />
        <br />
        <asp:Button ID="Button3" runat="server" Text="菜單" Width="96px" Height="37px" OnClick="Button3_Click1" />    
        <br />    
        <asp:Button ID="Button4" runat="server" Text="帳務管理" Width="96px" Height="37px" OnClick="Button4_Click1"/>
    </div>
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
                
        
                  <asp:Button ID="Button8" runat="server" CssClass="xx" Text="返回" Font-Size="Medium" OnClick="Button12_Click" />
            </div>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [OrderID], [ProductName], [Subtotal] FROM [Order Details]"></asp:SqlDataSource>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
                <asp:ButtonField Text="已取餐" />
            </Columns>
        </asp:GridView>

            </div> </div> 
             

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
                         
                         
                          <asp:Button ID="Button10" runat="server" CssClass="xx" Text="返回" Font-Size="Medium" OnClick="Button12_Click" />
                     </div>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name], [Price] FROM [Meal Details]"></asp:SqlDataSource>
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
                 <Columns>
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                 </Columns>
             </asp:GridView>



                 </div>  </div>
             <div class="tab">          <input type="radio" id="tab3" name="tabs"/>        
        <label for="tab3">未取餐訂單</label>          <div class="content" style="text-align:center">


              <asp:Label ID="Label6" runat="server" Text="未取餐訂單"></asp:Label><br /><br />
             <asp:TextBox ID="datepicker5" runat="server"></asp:TextBox>
             &nbsp; -&nbsp;
             <asp:TextBox ID="datepicker6" runat="server" ></asp:TextBox>
          &nbsp;<asp:Button ID="Button11" runat="server"  Text="查詢" /><br /><br />
             <br /> <div style="text-align:right">
                     
        

                  <asp:Button ID="Button13" runat="server" CssClass="xx" Text="返回" Font-Size="Medium" OnClick="Button12_Click" />

                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [No], [Name], [Price] FROM [Meal Details]"></asp:SqlDataSource>
                 <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSource3" HorizontalAlign="Center">
                 <Columns>
                     <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                     <asp:ButtonField Text="刪除" />
                 </Columns>
             </asp:GridView>


                     </div></div>     

             </div>    

        </div>    




    </form>
</body>
</html>
