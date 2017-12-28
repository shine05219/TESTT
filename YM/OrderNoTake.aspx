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
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [OrderID], [ProductName], [Subtotal] FROM [Order Details]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name], [Price] FROM [Meal Details]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [No], [Name], [Price] FROM [Meal Details]"></asp:SqlDataSource>
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSource3" HorizontalAlign="Center">
                 <Columns>
                     <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                     <asp:ButtonField Text="刪除" />
                 </Columns>
             </asp:GridView>
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
                 <Columns>
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                 </Columns>
             </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="完成" Height="43px" Width="75px" OnClick="Button1_Click" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="返回" Height="43px" Width="75px" OnClick="Button2_Click" />
            <br />
             </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
                <asp:ButtonField Text="已取餐" />
            </Columns>
        </asp:GridView>
                 
    </form>
</body>
</html>
