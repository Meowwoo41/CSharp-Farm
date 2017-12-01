<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" Inherits="FarmWeb.Page.shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>歡迎來到小農之家</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/cwtexyen.css"/>
    <link href="../css/global.css" rel="stylesheet" />
    <link href="../css/shopping.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<%--    <style>
        .auto-style1 {
            width: 200px;
        }

        .auto-style2 {
            width: 500px;
        }

        .auto-style3 {
            width: 500px;
        }

        .auto-style4 {
            width: 500px;
        }

        .containers {
            background-color: #ccf49e;
            margin: auto;
            min-width: 1920px;
        }

        .wrapper {
            width: 1720px;
            margin: auto;
        }

        .wrapper-s {
            width: 1320px;
            margin: auto;
            float:left;
        }

        .col-3 {
            width: calc(100%/3); /*calc為運算*/
            padding: 15px;
            float: left;
    }
    /*        -----------------Nav-----------------------        */
        nav {
            width: 100%;
            height:200px;
            position:relative;
        }
        nav .wrapper{
            position:relative;
        }
        nav .logo {
            float: left;
            padding-left: 30px;
            padding-top: 50px;
            background-color: #ccf49e;
        }

        nav .logo img {
            width: 200px;
            height: 100px;
        }
        nav .classbtn {
            text-decoration: none;
            color: black;
            font-size: 28px;
            font-family: 'cwTeXYen', sans-serif;
        }
        nav span{
            padding-left:50px;
            padding-top:80px;
        }
        nav .class{
            text-align:center;
        }
        nav .checkout_btn{
            float:right;
            width:150px;
            height:50px;
            margin-right:20px;
            margin-top:70px;
            font-size:28px;
            border-style:none;
            background-color:white;
        }
    /*    ***************************************************/
    /* -----------------ShoppingView-----------------------*/
        #ShoppingView .wrapper-s{
            margin-left:230px;
        }
        #ShoppingView .view{
            width:100%
        }
        #ShoppingView img{
            width:200px;
            height:250px;
        }
        #ShoppingView .price_lab{
            font-size:36px;
        }
        #ShoppingView .details_txt{
          width:100%;

        }
        #ShoppingView .gd_name_lab{
            font-size:36px;
        
        }
        #ShoppingView .discount_lab{
            float:right;
            color:red;
        }
        #ShoppingView .qty_slt{
            width:50px;
        }
        #ShoppingView .quantity_lab{
            font-size:22px;
        }
        #ShoppingView .car_btn{
            border-style: solid;
            background-color:gray;
            color:white;
            font-size:22px;
        }
        #ShoppingView .fb_btn{
            margin:10px;
        }
    /*        -----------------footer-----------------------        */
        footer h1 {
            text-align: center;
            padding-top: 30px;
        }

        footer .menu {
            background-color: #ccf49e;
            float: left;
            padding-right: 100px;
            padding-top: 150px;
        }

        footer li {
            list-style: none;
            float: left;
        }

        footer .menu a {
            display: block;
            color: black;
            text-decoration: none;
            padding-right: 10px;
            padding-left: 10px;
            line-height: 25px;
            font-size: 16px;
            border-right: 1px solid;
        }

        footer .wrapper {
            height: 200px;
            position: relative;
        }

        footer .cc {
            position: absolute;
            padding-left: 50%;
            padding-top: 150px;
        }

        footer .gotop {
            position: absolute;
            padding-left: 96%;
            padding-top: 50px;
        }

        footer .gotop a {
            text-decoration: none;
            font-size:28px
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="containers">
        <div class="wrapper clearfix">
            <div class="logo">
                <img src="../Logo/Logo-1.png" />
            </div>
            <div class="wrapper-s clearfix" >
                <div class="class">
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn1" runat="server" CssClass="classbtn" Text="根莖類"></asp:LinkButton></span>
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn2" runat="server" CssClass="classbtn" Text="葉菜類"></asp:LinkButton></span>
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn3" runat="server" CssClass="classbtn" Text="果實類"></asp:LinkButton></span>
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn4" runat="server" CssClass="classbtn" Text="花菜類"></asp:LinkButton></span>
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn5" runat="server" CssClass="classbtn" Text="菇類"></asp:LinkButton></span>
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn6" runat="server" CssClass="classbtn" Text="種子類"></asp:LinkButton></span>
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn7" runat="server" CssClass="classbtn" Text="加工品"></asp:LinkButton></span>
                    <span class="fa fa-leaf"><asp:LinkButton ID="class_btn8" runat="server" CssClass="classbtn" Text="蔬菜箱"></asp:LinkButton></span>  
                </div>
            </div>
                <asp:Button ID="checkout_btn" runat="server" Text="結帳" CssClass="checkout_btn" OnClick="checkout_btn_Click"/>
         </div>
    </nav>
        <div class="containers" id="ShoppingView">
            <div class="wrapper clearfix">
                <div class="wrapper-s clearfix">
                    <table class="view">
                        <tr>
                            <td rowspan="4" class="auto-style1">
                                <img src="../images/good1.png" />
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="gd_name_lab" runat="server" Text="地瓜" CssClass="gd_name_lab"></asp:Label>
                                <asp:Label ID="discount_lab" runat="server" Text="購物12個，可享9折" CssClass="discount_lab"></asp:Label>
                            </td>
                            <td rowspan="4" style="padding-left:150px;">
                                <img src="../images/good1.png" />
                            </td>
                            <td class="auto-style3">
                                
                                <asp:Label ID="gd_name_lab0" runat="server" Text="地瓜" CssClass="gd_name_lab"></asp:Label>
                                <asp:Label ID="discount_lab0" runat="server" Text="購物12個，可享9折" CssClass="discount_lab"></asp:Label>
                                
                            </td>
                         </tr>
                        <tr>
                            <td class="auto-style4" >
                                <asp:Label ID="price_lab" runat="server" Text="$30 TWD" CssClass="price_lab"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:Label ID="price_lab0" runat="server" Text="$30 TWD" CssClass="price_lab"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:TextBox ID="details_txt" runat="server" CssClass="details_txt" Height="106px" BackColor="#B3EF70" BorderColor="Black" BorderStyle="None" Enabled="False" EnableTheming="True"></asp:TextBox></td>
                            <td class="auto-style3"><asp:TextBox ID="details_txt0" runat="server" CssClass="details_txt" Height="106px" BackColor="#B3EF70" BorderColor="Black" BorderStyle="None" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="quantity_lab" runat="server" Text="數量：" CssClass="quantity_lab"></asp:Label>
                                <select id="Select1" class="qty_slt">
                                    <option></option>

                                </select>
                                <asp:Button ID="cancel_btn" runat="server" CssClass="car_btn" Text="取消購物車" />
                                <asp:Button ID="add_btn" runat="server" CssClass="car_btn" Text="加入購物車" /></td>
                            <td class="auto-style3"><asp:Label ID="quantity_lab0" runat="server" Text="數量：" CssClass="quantity_lab"></asp:Label>
                                <select id="Select2" class="qty_slt" name="D1">
                                    <option></option>

                                </select><asp:Button ID="cancel_btn0" runat="server" CssClass="car_btn" Text="取消購物車" />
                                <asp:Button ID="add_btn0" runat="server" CssClass="car_btn" Text="加入購物車" /></td>
                        </tr>
                        <tr>
                            <td class="auto-style1" rowspan="4" style="padding-top:200px;">
                                <img src="../images/good1.png" /></td>
                            <td class="auto-style4" style="padding-top:200px;">
                                <asp:Label ID="gd_name_lab1" runat="server" Text="地瓜" CssClass="gd_name_lab"></asp:Label>
                                <asp:Label ID="discount_lab1" runat="server" Text="購物12個，可享9折" CssClass="discount_lab"></asp:Label>
                            </td>
                            <td rowspan="4" style="padding-left:150px;padding-top:200px;">
                                <img src="../images/good1.png" /></td>
                            <td style="padding-top:200px;">
                                <asp:Label ID="gd_name_lab2" runat="server" Text="地瓜" CssClass="gd_name_lab"></asp:Label>
                                <asp:Label ID="discount_lab2" runat="server" Text="購物12個，可享9折" CssClass="discount_lab"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="price_lab1" runat="server" Text="$30 TWD" CssClass="price_lab"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:Label ID="price_lab2" runat="server" Text="$30 TWD" CssClass="price_lab"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:TextBox ID="details_txt1" runat="server" CssClass="details_txt" Height="106px" BackColor="#B3EF70" BorderColor="Black" BorderStyle="None" Enabled="False"></asp:TextBox></td>
                            <td><asp:TextBox ID="details_txt2" runat="server" CssClass="details_txt" Height="106px" BackColor="#B3EF70" BorderColor="Black" BorderStyle="None"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="quantity_lab1" runat="server" Text="數量：" CssClass="quantity_lab"></asp:Label>
                                <select id="Select3" class="qty_slt" name="D2">
                                    <option></option>

                                </select><asp:Button ID="cancel_btn1" runat="server" CssClass="car_btn" Text="取消購物車" />
                                <asp:Button ID="add_btn1" runat="server" CssClass="car_btn" Text="加入購物車" /></td>
                            <td><asp:Label ID="quantity_lab2" runat="server" Text="數量：" CssClass="quantity_lab"></asp:Label>
                                <select id="Select4" class="qty_slt" name="D3">
                                    <option></option>

                                </select><asp:Button ID="cancel_btn2" runat="server" CssClass="car_btn" Text="取消購物車" />
                                <asp:Button ID="add_btn2" runat="server" CssClass="car_btn" Text="加入購物車" /></td>
                        </tr>
                        <tr>
                            <td rowspan="4" style="padding-top:200px;">
                                <img src="../images/good1.png" />

                            </td>
                            <td style="padding-top:200px;">
                                <asp:Label ID="gd_name_lab3" runat="server" Text="地瓜" CssClass="gd_name_lab"></asp:Label>
                                <asp:Label ID="discount_lab3" runat="server" Text="購物12個，可享9折" CssClass="discount_lab"></asp:Label>
                            </td>
                            <td rowspan="4" style="padding-left:150px;padding-top:200px;">
                                <img src="../images/good1.png" />

                            </td>
                            <td style="padding-top:200px;">
                                <asp:Label ID="gd_name_lab4" runat="server" Text="地瓜" CssClass="gd_name_lab"></asp:Label>
                                <asp:Label ID="discount_lab4" runat="server" Text="購物12個，可享9折" CssClass="discount_lab"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="price_lab3" runat="server" Text="$30 TWD" CssClass="price_lab"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="price_lab4" runat="server" Text="$30 TWD" CssClass="price_lab"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:TextBox ID="details_txt3" runat="server" CssClass="details_txt" Height="106px" BackColor="#B3EF70" BorderColor="Black" BorderStyle="None" Enabled="False"></asp:TextBox></td>
                            <td><asp:TextBox ID="details_txt4" runat="server" CssClass="details_txt" Height="106px" BackColor="#B3EF70" BorderColor="Black" BorderStyle="None" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="quantity_lab3" runat="server" Text="數量：" CssClass="quantity_lab"></asp:Label>
                                <select id="Select5" class="qty_slt" name="D4">
                                    <option></option>

                                </select><asp:Button ID="cancel_btn3" runat="server" CssClass="car_btn" Text="取消購物車" />
                                <asp:Button ID="add_btn3" runat="server" CssClass="car_btn" Text="加入購物車" /></td>
                            <td><asp:Label ID="quantity_lab4" runat="server" Text="數量：" CssClass="quantity_lab"></asp:Label>
                                <select id="Select6" class="qty_slt" name="D5">
                                    <option></option>

                                </select><asp:Button ID="cancel_btn4" runat="server" CssClass="car_btn" Text="取消購物車" />
                                <asp:Button ID="add_btn4" runat="server" CssClass="car_btn" Text="加入購物車" /></td>
                        </tr>
                    </table>
                    <div style="width:100%;text-align:center;padding-top:100px; padding-bottom:100px;">
                        <asp:Button ID="front_btn" runat="server" Text="<" BackColor="Gray" BorderStyle="None" ForeColor="White" Font-Size="36pt" CssClass="fb_btn" />    
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Button ID="back_btn" runat="server" Text=">" BackColor="Gray" BorderStyle="None" ForeColor="White" Font-Size="36pt" CssClass="fb_btn" />
                    </div>
                </div>
            </div>
        </div>
        <footer class="containers">
             <div class="wrapper clearfix">
                 <div class="menu">
                    <ul>
                        <li><a href="#">購物說明</a></li>
                        <li><a href="#">最新消息</a></li>
                        <li><a href="#">小農日誌</a></li>
                        <li><a href="#">付款方式</a></li>
                    </ul>
                </div>
                <div class="cc">Ⓒ 2017 小農之家</div>
                
                <div class="gotop">
                    <a href="index.aspx"><h2>Home</h2><span class="fa fa-home fa-5x"></span></a>
                </div>
                 <div id="Login"><a href="member.aspx"><span class="fa fa-sign-in fa-3x"><p>會員登入</p></span></a></div>
             </div>
          </footer>

    </form>
</body>
</html>
