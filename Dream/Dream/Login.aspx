<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dream.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <link rel="stylesheet"  href="gittest.css" />

    <title>ログイン画面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>ログイン画面</h1>
        <h2>DREAM　COME　TRUE</h2>
        ユーザーID：　<asp:TextBox ID="TextBox1" runat="server" name="User_id"></asp:TextBox>
        <br />
        パスワード：　<asp:TextBox ID="TextBox2"  runat="server" name="Password"></asp:TextBox><br />
        <asp:Button ID="Button1" CssClass="Login" runat="server" Text="ログイン" OnClick="Button1_Click" name="In_button"/>
    </div>
    </form>
</body>
</html>
