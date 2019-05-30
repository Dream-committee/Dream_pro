<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Dream.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
                <link rel="stylesheet"  href="gittest.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>メニュー</h1>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>さん、こんにちは。<br />
        <asp:Button ID="Button1" runat="server" Text="従業員一覧" OnClick="Button1_Click" name="Emp_button"/>
        <br />
        <asp:Button ID="Button2" CssClass="Login" runat="server" OnClick="Button2_Click" Text="従業員登録" name="New_button"/>
        <br />
        <asp:Button ID="Button4" CssClass="Login" runat="server" OnClick="Button4_Click" Text="利用者登録" />
        <br />
        <asp:Button ID="Button3" CssClass="Login" runat="server" Text="ログアウト" Height="21px" OnClick="Button3_Click" name="Out_button"/>
        <br />
    </div>
    </form>
</body>
</html>
