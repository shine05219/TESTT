<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <style type="text/css">
        .img {
            height: 394px;
            width: 455px;
        }
        .auto-style1 {
            height: 90vh;
            position: relative;
            left: 7px;
            top: -2px;
        }
    </style>
    <title></title>
</head>
<body>

    <div style="background-image: url('/Image/去背.png'); background-repeat: no-repeat; background-position: center;" class="auto-style1">
        <div style="position:relative; height:100%; margin:0 auto; ">
        

            <div class="table" style="display:table; height:100%; margin:0 auto; position:relative;">
                <div style="display:table-row;">
                    <div style="display:table-row-group; margin:0 auto;">

            <p style="font-size:30px;font-weight:700;">亞米早餐</p>
       
                    </div>
                </div>
                <form id="form1" runat="server" style=" display:table-row;">
                    
                    <span class="td" style="display:table-cell;vertical-align:middle;">
                        帳號:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                       密碼:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                    </span>
                    <span class="td" style="display:table-cell;vertical-align:middle;">
                        <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" Height="37px" Width="70px" CssClass="auto-style4" />
                        <asp:Button ID="Button2" runat="server" Text="清除" OnClick="Button2_Click" Height="35px" Width="71px" />

                    </span>
                </form>
                
            </div>
        


       
    </div>
    </div>
</body>
</html>
