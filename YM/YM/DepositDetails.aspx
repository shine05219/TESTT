<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepositDetails.aspx.cs" Inherits="DepositDetails" %>

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
      });
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .img {
            height: 394px;
            width: 455px;
        }
         .auto-style1 {
            height: 286px;
            position: relative;
            left: 0px;
            top: 0px;
        }
         </style>
</head>
<body >
    <div style="background-image: url('/Image/bg.jpg');background-size:cover; background-position:center;" class="auto-style1";>
         <div style="position:relative; height:100%; margin:0 auto;width:100%;">

    <form id="form1" runat="server">
    <div style="text-align:center; background-color:ghostwhite">
  
      <asp:Label  ID="Label1" runat="server" Text="儲值明細" Font-Size="XX-Large" Font-Bold="True" Font-Names="Franklin Gothic Heavy" ForeColor="#3366FF"></asp:Label><br /><br />
     </div>
          <div style="text-align:center; background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;""><asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>
      &nbsp; -&nbsp;
      <asp:TextBox ID="datepicker2" runat="server" OnTextChanged="datepicker2_TextChanged" ></asp:TextBox>
  &nbsp;<asp:Button ID="Button1" runat="server"  Text="查詢日期" OnClick="Button1_Click" />
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DespositTime], [Phone], [ID], [DepositAmount], [Balance] FROM [Deposit]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="DespositTime" HeaderText="會員加入日期" SortExpression="DespositTime" />
                    <asp:BoundField DataField="ID" HeaderText="會員編號" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="DepositAmount" HeaderText="會員儲值金額" SortExpression="DepositAmount" />
                    <asp:BoundField DataField="Balance" HeaderText="剩餘金額" SortExpression="Balance" />
                </Columns>
            </asp:GridView>
</div> 
        <div style="text-align:right">
&nbsp;<asp:Button ID="Button2" runat="server"  Text="返回" OnClick="Button2_Click" Height="37px" Width="75px"/>

     </div>


    </form>
         
        </div></div>
</body>
</html>
