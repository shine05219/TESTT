<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .css1 {
            position: absolute;
            right: 60%;
        }
        .css2 {
            position: absolute;
            right: 50%;
        }
        .css3 {
            position: absolute;
            right: 40%;
        }
        .css4 {
            position: absolute;
            right: 30%;
        }
    </style>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
    <div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="菜單管理" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
    </div><br />
          <asp:Button ID="Button1" runat="server" Text="新增" Width="76px" OnClick="Button1_Click" CssClass="css1" />
        <asp:Button ID="Button2" runat="server" Text="全部選取" Width="119px" CssClass="css2"  />
        <asp:Button ID="Button3" runat="server" Text="取消選取"  Width="119px" CssClass="css3" />
        <asp:Button ID="Button4" runat="server" Text="清除選取"   Width="119px" CssClass="css4" />
         
        <div style="text-align:right">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button5" runat="server" Text="搜尋" OnClick="Button5_Click" />
        </div>






         <div style="text-align:right">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSource1" HorizontalAlign="Center" ImageUrl="Image">
                 <Columns>
                     <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                     <asp:BoundField DataField="Introduction" HeaderText="Introduction" SortExpression="Introduction" />
                     <asp:ImageField HeaderText="Image" DataImageUrlField="Pictures">
                     </asp:ImageField>
                     <asp:CommandField ShowEditButton="True" />
                     <asp:CommandField ShowDeleteButton="True" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [No], [Name], [Price], [Introduction], [Pictures] FROM [Meal Details]"></asp:SqlDataSource>
&nbsp;<asp:Button ID="Button6" runat="server"  Text="返回" OnClick="Button6_Click"/>

     </div>


    </form>
</body>
</html>
