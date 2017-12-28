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
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
    <div style="text-align:center;">
  
      <asp:Label  ID="Label1" runat="server" Text="儲值明細" Font-Size="XX-Large" Font-Bold="True" Font-Names="Franklin Gothic Heavy" ForeColor="#3366FF"></asp:Label><br /><br />
  
  
     
           <asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>
      &nbsp; -&nbsp;
      <asp:TextBox ID="datepicker2" runat="server" ></asp:TextBox>
  &nbsp;<asp:Button ID="Button1" runat="server"  Text="查詢日期" />
        <p>
            <asp:FormView ID="FormView1" runat="server">
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
          <asp:TextBox ID="TextBox1" runat="server" Height="271px" Width="545px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
 </p></div> 
        <div style="text-align:right">
&nbsp;<asp:Button ID="Button2" runat="server"  Text="返回" OnClick="Button2_Click" Height="37px" Width="75px"/>

     </div>


    </form>
</body>
</html>
