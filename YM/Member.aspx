<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
     <div style="text-align:center">
      <asp:Label ID="Label1" text-aligen="center" runat="server" Font-Size="XX-Large" Text="會員資料" Font-Bold="True" ForeColor="#0066FF" ></asp:Label>
      </div>
         <div style="text-align:right">
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" runat="server"  Text="搜尋" />
  </div> <br /> <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="儲值" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:ButtonField Text="按鈕" />
            </Columns>
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>




          
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=sa;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID], [Name] FROM [Customer]"></asp:SqlDataSource>




          
          <div style="margin-left:800px">
         <asp:Button ID="Button2" runat="server"  Text="返回" OnClick="Button2_Click" Height="41px" Width="74px" />

    </div>



    </form>
</body>
</html>
