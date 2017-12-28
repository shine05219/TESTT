<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderNoTake.aspx.cs" Inherits="OrderDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
     <div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="未取餐明細" Font-Size="XX-Large" ForeColor="#0066FF" Font-Bold="True"></asp:Label>
    </div><br />

        
         <div style="text-align:right">
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [TakeMealDate], [TakeMealTime], [ID], [Quantity] FROM [ShoppingCart]"></asp:SqlDataSource>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                 <Columns>
                     <asp:BoundField DataField="TakeMealDate" HeaderText="TakeMealDate" SortExpression="TakeMealDate" />
                     <asp:BoundField DataField="TakeMealTime" HeaderText="TakeMealTime" SortExpression="TakeMealTime" />
                     <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                     <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                 </Columns>
             </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="完成" Height="43px" Width="75px" OnClick="Button1_Click" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="返回" Height="43px" Width="75px" OnClick="Button2_Click" />
            <br />
             </div>
                 
    </form>
</body>
</html>
