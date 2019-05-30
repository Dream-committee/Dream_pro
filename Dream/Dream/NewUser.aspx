<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="Dream.NewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>従業員登録画面</h1>
        従業員コード：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        氏：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        氏(ふりがな) :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        名：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
        名(ふりがな):<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        性別：
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" 
            DataTextField="gender_nm" DataValueField="gender_cd" AppendDataBoundItems="True">
            <asp:ListItem Value="" Text="&lt;未選択&gt;" />
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Dream_dbConnectionString %>" SelectCommand="SELECT [gender_cd], [gender_nm] FROM [m_gender]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dream_dbConnectionString %>" SelectCommand="SELECT [section_cd], [section_nm] FROM [m_section]"></asp:SqlDataSource>
        <br />
        生年月日：
        <asp:DropDownList ID="BirthYearList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Birth_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="BirthMonthList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Birth_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="BirthDayList" runat="server">
        </asp:DropDownList>
        <br />

        所属コード：       
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="section_nm" DataValueField="section_cd">
        </asp:DropDownList>
        <br />
        入社日：
        <asp:DropDownList ID="JoinYearList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Join_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="JoinMonthList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Join_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="JoinDayList" runat="server">
        </asp:DropDownList>
        <br />

        <asp:Button ID="Button1" runat="server" Text="登録" OnClick="Button1_Click" /> <br />
        <asp:Button ID="Button2" runat="server" Text="戻る" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
