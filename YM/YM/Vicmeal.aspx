<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vicmeal.aspx.cs" Inherits="Vicmeal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
        .css1 {
            position: absolute;
            right: 70%;
            top:10%;
        }
        .bg001{
            height: 100%;
            width:100%;
            max-width:100%;
        }
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
         .css3 {
            position: absolute;
            right: 5%;
            bottom:20%
        }
         .auto-style1 {
        height: 56px;
    }
         .auto-style2 {
        height: 850px;
        width: 101%;
        max-width: 100%;
    }
         </style>
</head>
<body>
    <form id="form1" runat="server">
         
  
    <div style="text-align:center ; background-color:ghostwhite " class="auto-style1">
    <asp:Label ID="Label2" runat="server" Text="副餐" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF" Font-Names="微軟正黑體"></asp:Label>
    <br />
        
      <asp:Button ID="Button3" runat="server" Text="新增產品" OnClick="Button1_Click" CssClass="btn" Font-Names="微軟正黑體" Font-Size="Large" />
    
    </div>
        <div style="background-image: url('Image/ordermenu01.jpg');background-size:cover; background-repeat: no-repeat; background-position: center; " class="auto-style2">
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ViceMeal]"></asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" HorizontalAlign="Center" PageSize="5" Width="1000px" CssClass="css2" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" OnRowCreated="GridView4_RowCreated">
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
                <asp:CommandField ShowEditButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle Font-Bold="True" Font-Size="Larger" HorizontalAlign="Center" />
        </asp:GridView>
        <asp:Button ID="Button5" runat="server" CssClass="btn2" Font-Names="微軟正黑體" Font-Size="Large" Height="51px" Text="返回" Width="97px" OnClick="Button5_Click1" /></div>
    </form>
</body>
</html>
