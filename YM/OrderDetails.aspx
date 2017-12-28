<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderDetails.aspx.cs" Inherits="OrderDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .css1 {
           
            right: 30%;
        }
        .css2 {
            position: absolute;
            right: 10%;
        }
    </style>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
    <div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="訂單明細" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
    </div><br />

        
         <div style="text-align:right">
            <asp:Button ID="Button1" runat="server" Text="完成" Height="43px" Width="75px" OnClick="Button1_Click" CssClass="css2" />
               
            <asp:Button ID="Button2" runat="server" Text="返回" Height="43px" Width="75px" OnClick="Button2_Click" />
            <br /><br />
        </div>
    </form>
</body>
</html>
