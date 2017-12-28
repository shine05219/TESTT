<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hotmeal.aspx.cs" Inherits="YM_hotmean" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
       
        .btn {
               position: absolute;
            right: 70%;
            top:10%;
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
          .btn2 {
               position: absolute;
            right: 8%;
            top:10%;
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
          .css2 {
            position: absolute;
            top: 20%;
            left:15%
        }
           .bg001{
            height: 100%;
            width:100%;
            max-width:100%;
        }
        
         .auto-style2 {
             position: absolute;
             top: 20%;
             left: 15%;
             margin-top: 0px;
         }
        
         .auto-style3 {
             height: 850px;
             width: 100%;
             max-width: 100%;
         }
        
         </style>
</head>
<body>
    <form id="form1" runat="server">
         
    <div style="text-align:center; background-color:ghostwhite">
    <asp:Label ID="Label2" runat="server" Text="熱門套餐" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF" Font-Names="微軟正黑體"></asp:Label>
    </div><br />
      <asp:Button ID="Button3" runat="server" Text="新增產品" OnClick="Button1_Click" CssClass="btn" Font-Names="微軟正黑體" Font-Size="Large" />
    
    <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="auto-style3">
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [HotDessert]" DeleteCommand="DELETE FROM [HotDessert] WHERE [No] = @No" InsertCommand="INSERT INTO [HotDessert] ([Name], [Quantity], [Introduction], [Price], [Pictures], [Remarks]) VALUES (@Name, @Quantity, @Introduction, @Price, @Pictures, @Remarks)" UpdateCommand="UPDATE [HotDessert] SET [Name] = @Name, [Quantity] = @Quantity, [Introduction] = @Introduction, [Price] = @Price, [Pictures] = @Pictures, [Remarks] = @Remarks WHERE [No] = @No">
            <DeleteParameters>
                <asp:Parameter Name="No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Introduction" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Pictures" Type="String" />
                <asp:Parameter Name="Remarks" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Introduction" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Pictures" Type="String" />
                <asp:Parameter Name="Remarks" Type="String" />
                <asp:Parameter Name="No" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" HorizontalAlign="Center" PageSize="5" Width="1000px" CssClass="auto-style2" OnRowCreated="GridView4_RowCreated">
            <Columns>
                <asp:TemplateField HeaderText="選取">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="No" HeaderText="編號" SortExpression="No">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="名稱" SortExpression="Name">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="價錢" SortExpression="Price">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity" />
                <asp:BoundField DataField="Introduction" HeaderText="介紹" SortExpression="Introduction">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" Width="230px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="照片" SortExpression="Pictures">
                    <EditItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("Pictures") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Pictures") %>' />
                    </ItemTemplate>
                    <ControlStyle Height="100px" Width="100px" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="Remarks" HeaderText="註解" SortExpression="Remarks" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle Font-Bold="True" Font-Size="Larger" HorizontalAlign="Center" />
        </asp:GridView>
        <asp:Button ID="Button5" runat="server" CssClass="btn2" Font-Names="微軟正黑體" Font-Size="Large" Height="51px" Text="返回" Width="97px" OnClick="Button5_Click1" />
</div> </form>
</body>
</html>
