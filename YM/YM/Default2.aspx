<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style type="text/css">
        .新增樣式1 {
            background-color: #FF9900;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="新增樣式1">
    
    </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" DataKeyNames="ID">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    OrderID:
                    <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    Subtotal:
                    <asp:Label ID="SubtotalLabel" runat="server" Text='<%# Eval("Subtotal") %>' />
                    <br />
                    PaymentMethod:
                    <asp:Label ID="PaymentMethodLabel" runat="server" Text='<%# Eval("PaymentMethod") %>' />
                    <br />
                    OrderTime:
                    <asp:Label ID="OrderTimeLabel" runat="server" Text='<%# Eval("OrderTime") %>' />
                    <br />
                    Remarks:
                    <asp:Label ID="RemarksLabel" runat="server" Text='<%# Eval("Remarks") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    OrderID:
                    <asp:TextBox ID="OrderIDTextBox" runat="server" Text='<%# Bind("OrderID") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Subtotal:
                    <asp:TextBox ID="SubtotalTextBox" runat="server" Text='<%# Bind("Subtotal") %>' />
                    <br />
                    PaymentMethod:
                    <asp:TextBox ID="PaymentMethodTextBox" runat="server" Text='<%# Bind("PaymentMethod") %>' />
                    <br />
                    OrderTime:
                    <asp:TextBox ID="OrderTimeTextBox" runat="server" Text='<%# Bind("OrderTime") %>' />
                    <br />
                    Remarks:
                    <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">ID:
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    OrderID:
                    <asp:TextBox ID="OrderIDTextBox" runat="server" Text='<%# Bind("OrderID") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Subtotal:
                    <asp:TextBox ID="SubtotalTextBox" runat="server" Text='<%# Bind("Subtotal") %>' />
                    <br />
                    PaymentMethod:
                    <asp:TextBox ID="PaymentMethodTextBox" runat="server" Text='<%# Bind("PaymentMethod") %>' />
                    <br />
                    OrderTime:
                    <asp:TextBox ID="OrderTimeTextBox" runat="server" Text='<%# Bind("OrderTime") %>' />
                    <br />
                    Remarks:
                    <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    OrderID:
                    <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    Subtotal:
                    <asp:Label ID="SubtotalLabel" runat="server" Text='<%# Eval("Subtotal") %>' />
                    <br />
                    PaymentMethod:
                    <asp:Label ID="PaymentMethodLabel" runat="server" Text='<%# Eval("PaymentMethod") %>' />
                    <br />
                    OrderTime:
                    <asp:Label ID="OrderTimeLabel" runat="server" Text='<%# Eval("OrderTime") %>' />
                    <br />
                    Remarks:
                    <asp:Label ID="RemarksLabel" runat="server" Text='<%# Eval("Remarks") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    OrderID:
                    <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    Subtotal:
                    <asp:Label ID="SubtotalLabel" runat="server" Text='<%# Eval("Subtotal") %>' />
                    <br />
                    PaymentMethod:
                    <asp:Label ID="PaymentMethodLabel" runat="server" Text='<%# Eval("PaymentMethod") %>' />
                    <br />
                    OrderTime:
                    <asp:Label ID="OrderTimeLabel" runat="server" Text='<%# Eval("OrderTime") %>' />
                    <br />
                    Remarks:
                    <asp:Label ID="RemarksLabel" runat="server" Text='<%# Eval("Remarks") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-DJ3IU0D;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="5">
            <Columns>
                <asp:BoundField DataField="OrderTime" HeaderText="顧客取餐時間" SortExpression="OrderTime">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" ForeColor="#3333CC" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="OrderID" HeaderText="客戶編號" SortExpression="OrderID">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PaymentMethod" HeaderText="交易方式" SortExpression="PaymentMethod">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField Text="已取餐" />
                <asp:HyperLinkField DataNavigateUrlFields="PorductName" DataNavigateUrlFormatString="detail.aspx?PorductName{0}" DataTextField="ProductName" HeaderText="點餐明細" />
            </Columns>
        </asp:GridView>
         <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-DJ3IU0D;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="5">
            <Columns>
                <asp:BoundField DataField="OrderTime" HeaderText="顧客取餐時間" SortExpression="OrderTime">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" ForeColor="#3333CC" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="OrderID" HeaderText="客戶編號" SortExpression="OrderID">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="品名" SortExpression="ProductName">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PaymentMethod" HeaderText="交易方式" SortExpression="PaymentMethod">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=DESKTOP-DJ3IU0D;Initial Catalog=yummy;Persist Security Info=True;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="5">
            <Columns>
                <asp:BoundField DataField="OrderTime" HeaderText="顧客取餐時間" SortExpression="OrderTime">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" ForeColor="#3333CC" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="OrderID" HeaderText="客戶編號" SortExpression="OrderID">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="品名" SortExpression="ProductName">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PaymentMethod" HeaderText="交易方式" SortExpression="PaymentMethod">
                <HeaderStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField Text="已取餐" />
            </Columns>
        </asp:GridView>



          <div style="text-align:right">
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=140.137.61.164;Initial Catalog=yummy;User ID=student;Password=student" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [SetMeal]"></asp:SqlDataSource>
             <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="5" Width="1000px">
                 <Columns>
                     <asp:TemplateField HeaderText="選取">
                         <ItemTemplate>
                             <asp:CheckBox ID="CheckBox1" runat="server" />
                         </ItemTemplate>
                         <HeaderStyle HorizontalAlign="Center" />
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:BoundField DataField="No" HeaderText="編號" SortExpression="No" >
                     <HeaderStyle HorizontalAlign="Center" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Name" HeaderText="名稱" SortExpression="Name" >
                     <HeaderStyle HorizontalAlign="Center" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Price" HeaderText="價錢" SortExpression="Price" >
                     <HeaderStyle HorizontalAlign="Center" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Introduction" HeaderText="介紹" SortExpression="Introduction" >
                     <HeaderStyle HorizontalAlign="Center" />
                     <ItemStyle Font-Names="微軟正黑體" HorizontalAlign="Center" Width="230px" />
                     </asp:BoundField>
                     <asp:ImageField DataImageUrlField="Pictures" HeaderText="照片" SortExpression="Pictures">
                         <ControlStyle Height="100px" Width="100px" />
                         <HeaderStyle HorizontalAlign="Center" />
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:ImageField>
                     <asp:CommandField ShowEditButton="True" >
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:CommandField>
                 </Columns>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 <PagerStyle Font-Bold="True" Font-Size="Larger" HorizontalAlign="Center" />
             </asp:GridView></div>
&nbsp;<div style="text-align:right">
                   <asp:Button ID="Button3" runat="server" Text="新增" Width="76px" OnClick="Button1_Click" CssClass="auto-style4" Font-Names="微軟正黑體" Font-Size="Large" />
     </div>
    </form>
</body>
</html>
