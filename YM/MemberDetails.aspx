<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberDetails.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body bgcolor="#F5DEB3">
    <form id="form1" runat="server">
   <div style="text-align:center"> 
      <asp:Label ID="Label1" runat="server"  Text="會員資料明細" Font-Size="XX-Large" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
  </div>








         <div style="text-align:center">
      <br />
      <br /><br />
             <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Left">
                 <EditItemTemplate>
                     ID:
                     <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                     <br />
                     Name:
                     <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                     <br />
                     Email:
                     <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                     <br />
                     PhoneNo:
                     <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                     <br />
                     <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                     &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                 </EditItemTemplate>
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 <InsertItemTemplate>
                     ID:
                     <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                     <br />
                     Name:
                     <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                     <br />
                     Email:
                     <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                     <br />
                     PhoneNo:
                     <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                     <br />
                     <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                     &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                 </InsertItemTemplate>
                 <ItemTemplate>
                     ID:
                     <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                     <br />
                     Name:
                     <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                     <br />
                     Email:
                     <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                     <br />
                     PhoneNo:
                     <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Bind("PhoneNo") %>' />
                     <br />

                 </ItemTemplate>
                 <PagerStyle HorizontalAlign="Center" />
                 <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:FormView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yummyConnectionString %>" SelectCommand="SELECT [ID], [Name], [Email], [PhoneNo] FROM [Customer]"></asp:SqlDataSource>
             <asp:Label ID="Label2" runat="server" Text=" 儲值金額 : "></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
      <asp:Button ID="Button2" runat="server" Text="新增" OnClick="Button2_Click" />
      <asp:TextBox ID="TextBox1" runat="server" Height="284px"  Width="576px" TextMode="MultiLine" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
             <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" />
        </div>


    </form>
</body>
</html>
