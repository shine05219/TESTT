<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MealStat.aspx.cs" Inherits="MealStat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/trontastic/jquery-ui.css"/>
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#datepicker1").datepicker();
          $("#datepicker2").datepicker();
      });
  </script>
    <title></title>
</head>
<body bgcolor="#F5DEB3" >
    <form id="form1" runat="server">
     <div style="text-align:center">
        <asp:Label ID="Label1" runat="server" Text="餐點統計" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF"></asp:Label><br />   
           <asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>
      &nbsp; -&nbsp;
      <asp:TextBox ID="datepicker2" runat="server" ></asp:TextBox>
  &nbsp;<asp:Button ID="Button1" runat="server"  Text="查詢" /></div><br /><br />






          <div style="text-align:right">
              
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [No], [Name], [Price], [Quantity] FROM [HotDessert]"></asp:SqlDataSource>
              
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" DataKeyNames="No">
                  <Columns>
                      <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                      <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                      <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                  </Columns>
              </asp:GridView>
  <asp:Button ID="Button3" runat="server" Text="返回" OnClick="Button3_Click" Height="38px" Width="70px" />

              </div>

    </form>
</body>
</html>
