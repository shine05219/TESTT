<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinStst.aspx.cs" Inherits="MealStat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
     <div style="text-align:center">
        <asp:Label ID="Label1" runat="server" Text="金額統計" Font-Size="XX-Large" Font-Bold="True" ForeColor="#3366FF"></asp:Label><br />

         
           <asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>
      &nbsp; -&nbsp;
      <asp:TextBox ID="datepicker2" runat="server" ></asp:TextBox>
  &nbsp;<asp:Button ID="Button2" runat="server"  Text="查詢" /></div>
        <br />



        <div style="text-align:right">
  <asp:Button ID="Button3" runat="server" Text="返回" OnClick="Button3_Click" Height="38px" Width="70px" />

              </div>
    </form>
</body>
</html>
