<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="member.aspx.cs" Inherits="FarmWeb.Page.member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>小農之家</title>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="login.css"/>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

    <script>
        $(function() {
            $("#signup").hide();

            console.log("#b1");
            console.log("#b2");
            $("#b1").click(function() {

                $("#signup").hide()
                $("#login").show()
            });

            $("#b2").click(function() {

                $("#login").hide()
                $("#signup").show()
            });
        })

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
        <div class="container500">
            <div class="button2" ole="group">
                <!--               為js 設 b1,b2 click-->
                <button id="b1" class="rounded border border-white">登入</button>
                <button id="b2" class="rounded border border-white">註冊</button>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="container500">

            <form id="login" class="rounded border border-white">
                <div class="form-group">
                    <span class="fa fa-envelope-o"></span>
                    <label for="exampleInputEmail1">電子信箱 : </label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">密碼 : </label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                    <input type="checkbox" class="form-check-input">
                      記住帳號
                    </label>
                    <label class="form-check-label">
                    <input type="checkbox" class="form-check-input">
                      記住密碼
                    </label>
                </div>

                <button type="button" class="btn btn-primary btn-lg btn-block">登入</button>

                <div class="container-fluid" style="margin-top:10px;background-color: #868686;">
                        <div class="box">
                            <a href="https://zh-tw.facebook.com" class="fa fa-facebook-square fa-2x"> facebook</a><br>
                            <a href="https://twitter.com/?lang=zh-tw" class="fa fa-twitter fa-2x"> twitter</a><br>
                            <a href="https://www.instagram.com/?hl=zh-tw" class="fa fa-instagram fa-2x"> instagram</a><br>
                        </div>
                </div>

            </form>

            <form id="signup" class="rounded border border-white">
                <div class="form-group">
                    <span class="fa fa-envelope-o"></span>
                    <label for="exampleInputEmail1">輸入電子信箱 : </label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">輸入密碼 : </label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">確認密碼 : </label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>

                <div class="form-group">
                    <label>輸入姓名 : </label>
                    <input class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label>輸入電話 : </label>
                    <input class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label>輸入地址 : </label>
                    <input class="form-control" type="text">
                </div>

                <div class="form-check">
                    <label class="form-check-label">
                    <input type="checkbox" class="form-check-input">
                    0.0
                    </label>
                    <label class="form-check-label">
                    <input type="checkbox" class="form-check-input">
                    以上訊息輸入正確
                    </label>
                </div>
                <button type="submit" class="btn btn-primary btn-lg btn-block">確定註冊</button>
            </form>

        </div>
    </div>
    </form>
</body>
</html>
