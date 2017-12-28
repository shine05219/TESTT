<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberDetails.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .加值 {
            position: absolute;
            top: 20%;
            left: 30%;
        }
         .加值1{
            position: absolute;
            top: 20%;
            left: 40%;
        }
         .加值2{
            position: absolute;
            top: 20%;
            left: 60%;
        }
          .加值3{
            position: absolute;
            top:30%;
            left:15%;
        }
          .返回{
            position: absolute;
            bottom:10%;
            right:15%;
        }
        .auto-style1 {
            position: absolute;
            top: -2147483648%;
            left: 41%;
            width: 130px;
        }
    </style>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
   <div style="text-align:center"> 
      <asp:Label ID="Label1" runat="server"  Text="會員資料明細" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
  </div>








      
    
      
             <asp:Label ID="Label2" runat="server" Text=" 加值金額 : " CssClass="加值"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" CssClass="加值1" Width="130px"></asp:TextBox>
      <asp:Button ID="Button2" runat="server" Text="確認" OnClick="Button2_Click" CssClass="加值2" />
      <asp:TextBox ID="TextBox1" runat="server" Height="284px"  Width="576px" TextMode="MultiLine" OnTextChanged="TextBox1_TextChanged" CssClass="加值3" >2017/10/21 儲值150元
2017/10/22 購買鮪魚三明治與紅茶 扣除50元</asp:TextBox>
             <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" Font-Size="XX-Large" Height="50px" Width="96px" CssClass="返回" />
       


    </form>
</body>
</html>
