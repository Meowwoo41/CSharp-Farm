<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="member.aspx.cs" Inherits="FarmWeb.Page.member1" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>小農之家</title>
    <!-- metatags-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Meta tag Keywords -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--style_sheet-->
    <link href="../css/global.css" rel="stylesheet" />
    <link href="../css/member.css" rel="stylesheet" />
    <!-- web font -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/cwtexyen.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>會員加入</h1>
        <div class="w3ls-main">
            <div class="w3ls-form">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="電子信箱：" CssClass="lab_font"></asp:Label><asp:TextBox ID="txt_mail" runat="server" CssClass="txt_msg" TextMode="Email" c></asp:TextBox>
                </div>
                <div style="margin-top: 10px; margin-bottom: 10px">
                    <asp:Label ID="Label2" runat="server" Text="輸入密碼：" CssClass="lab_font"></asp:Label><span style="color:red; font-size:12px; font-family:'Times New Roman', Times, serif;">*密碼字元必須大於8個字</span><asp:TextBox ID="txt_secret1" runat="server" TextMode="Password" CssClass="txt_msg"></asp:TextBox>
                </div>
                <div style="margin-top: 10px; margin-bottom: 10px">
                    <asp:Label ID="Label3" runat="server" Text="再輸入一次密碼：" CssClass="lab_font"></asp:Label><asp:TextBox ID="txt_secrec2" runat="server" TextMode="Password" CssClass="txt_msg"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label4" runat="server" Text="會員姓名：" CssClass="lab_font"></asp:Label><asp:TextBox ID="txt_name" runat="server" CssClass="txt_msg" Font-Size="28px"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label5" runat="server" Text="手機號碼：" CssClass="lab_font"></asp:Label><asp:TextBox ID="txt_phone" runat="server" CssClass="txt_msg" Font-Size="28px"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label6" runat="server" Text="地址：" CssClass="lab_font"></asp:Label>
                    <asp:DropDownList ID="tw_city" runat="server" OnSelectedIndexChanged="tw_city_SelectedIndexChanged" AutoPostBack="True" CssClass="tw_city">
                    </asp:DropDownList>
                    <asp:DropDownList ID="tw_area" runat="server" CssClass="tw_area">
                    </asp:DropDownList>
                    <asp:TextBox ID="txt_address" runat="server" CssClass="txt_msg" Font-Size="28px"></asp:TextBox>
                </div>
                <div class="clear"></div>
                <div class="w3ls-btn">
                    <div style="height:180px;">
                        <asp:Label ID="lab_error" runat="server" Text="" CssClass="lab_error"></asp:Label>
                    </div>
                    <div class="chk_div">
                        <asp:CheckBox ID="chk_mail" runat="server" Text="您的信箱是否接受本平台最新訊息" CssClass="chk_mail" Checked="True" />
                    </div>
                    <div class="chk_div">
                        <asp:CheckBox ID="chk_inf" runat="server" Text="我以上資訊皆填寫正確" CssClass="chk_inf" />
                    </div>
                    <asp:Button ID="btn_send" runat="server" Text="送出" CssClass="btn_send" OnClick="btn_send_Click" />
                </div>
            </div>
        </div>
    </form>
        <footer>
            <p> &copy; 2017 小農之家 </p>
        </footer>
</body>
</html>
