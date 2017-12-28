<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deforget.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="auto-style1">
<head runat="server">
    <title>亞米登入</title>
    <link rel="stylesheet" href="Style/buttons/login/css/buttons.css" />
    <link rel="icon" type="image/icon" href="Image/Yummyv2.ico" />
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="Style/buttons/login/js/buttons.js"></script>
    
    <style type="text/css">
        .img {
            height: 394px;
            width: 455px;
        }
        
        .font1{
            font-family:Microsoft JhengHei;
            color:black;
            font-weight: bold;
            font-size:19px;
            margin:0px auto;
            width:auto;
        }
        .font2{
            width:100%;
            font-size:50px;
            color:darkorange;
            font-weight:bold;
            font-family: Microsoft JhengHei;
            text-align: center;
            line-height:100px;
        }
        .auto-style1 {
            height: 100%;
            max-height:100%;
            width:100%;
            max-width:100%;
        }
        
        .auto-style2 {
            width:100%;
            height:auto;
            vertical-align:middle;
            text-align: center;
            margin:0px auto;
        }
        .auto-style3{           
            height:auto;
            width:auto;
            margin:0px auto;
        }

        .auto-style4 {
            font-family: Microsoft JhengHei;
            color: black;
            font-weight: bold;
            font-size: 19px;
            margin: 0px auto;
            width: auto;
            height: 70px;
        }

        </style>
</head>
<body class="auto-style1">
    <div id="dialog" style="text-align: left;display: none; ">
    
</div>
    <div style="background-image: url('/Image/login02.jpg');background-size:cover; background-repeat: no-repeat; background-position: center;" class="auto-style1">
        <div style="position:relative;" class="auto-style1">
        

            <div style="display:table; position:relative;margin:0px auto;width:auto;height:100%;" >
                <div style="display:table-row;margin:0px auto;width:auto;height:100px;">
                     <p class="font2" ></p>
                </div>

                <form id="form1" runat="server" style=" display:table-row;height:100%;width:100%;margin:0px auto;">
                   <div class="auto-style2">
                    <div class="auto-style3" style="background-image:url('/Image/login03.png');border-radius:30px;">
                        <img src="Image/Yummyv2.png" height="250" width="250" />
                            <span class="font1" style="display:inline-block;width:100%">
                        請輸入您的信箱：<asp:TextBox ID="TextBox1" runat="server" Height="16" ></asp:TextBox><br />
                        
                            </span>
                            <span class="auto-style4" style="display:inline-block;line-height:70px;">
                                <asp:Button ID="Button1" runat="server" Text="確定送出" OnClick="Button1_Click" href="#" class="button button-pill button-flat-highlight" Width="130" Height="40"/>
                                <asp:Button ID="Button2" runat="server" Text="清除" OnClick="Button2_Click" href="#" class="button button-pill button-flat-highlight" Width="130" Height="40"/>
                               <asp:Button ID="Button3" runat="server" Text="返回" OnClick="Button3_Click" href="#" class="button button-pill button-flat-highlight" Width="130" Height="40"/>
                            </span>
                    </div>
                   </div>
                </form>
                
            </div>
        


       
    </div>
    </div>
</body>
</html>
