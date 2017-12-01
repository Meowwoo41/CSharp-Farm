<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FarmWeb.Page.index" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>歡迎來到小農之家</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/cwtexyen.css"/>
    <link href="../css/global.css" rel="stylesheet" />
    <link href="../css/desktop.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="containers" style="height:200px;">
        <div class="wrapper clearfix">
            <div class="logo" style="padding-top:50px;">
                <img src="../Logo/Logo-1.png" /></div>
            <div class="menu">
                <ul style="padding-top:45px;">
                    <li><a href="#" style="font-size:28px;"><span class="fa fa-heart"></span>商品介紹</a></li>
                    <%--<li><a href="#"><span class="fa fa-shopping-cart"></span>購物平台</a></li>--%>
                    <li><a href="#" style="font-size:28px;"><span class="fa fa-star"></span>小農介紹</a></li>
                    <li><a href="#" style="font-size:28px;"><span class="fa fa-phone"></span>聯絡我</a></li>
                    <li><a href="#" style="font-size:28px;"><span class="fa fa-external-link"></span>相關連結</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="containers" >
    <div class="wrapper">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="../images/header1-1.png" />
    </div>
    <div class="carousel-item">
        <img src="../images/header2-1.png" />
    </div>
    <div class="carousel-item">
        <img src="../images/header3-1.png" />
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
    </header>
       <div class="containers" id="hot">
            <div class="wrapper clearfix">
               <div class=hottitle>
                   <h3>本季熱門商品</h3>
               </div>
               <div class="hotgoods">
                    <div class="card">
                        <div class="front">
                            <img src="../images/hot1.png" />
                        </div>
                        <div class="back">
                           <h3>好吃大地瓜</h3>
                            <p>
                                $30 TWD
                            </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="front">
                            <img src="../images/hot2.png" />
                        </div>
                        <div class="back">
                            <h3>好吃大地瓜</h3>
                            <p>
                                $30 TWD
                            </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="front">
                            <img src="../images/hot1.png" />
                        </div>
                        <div class="back">
                           <h3>好吃大地瓜</h3>
                            <p>
                                $30 TWD
                            </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="front">
                            <img src="../images/hot2.png" />
                        </div>
                        <div class="back">
                            <h3>好吃大地瓜</h3>
                            <p>
                                $30 TWD
                            </p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="front">
                            <img src="../images/hot1.png" />
                        </div>
                        <div class="back">
                            <h3>好吃大地瓜</h3>
                             <p>
                                $30 TWD
                            </p>
                        </div>
                    </div>
            </div>
            <div>
                <asp:Button ID="shopping_btn" runat="server" CssClass="hotbtn" Text="觀看更多商品" OnClick="shopping_btn_Click" />
            </div>
            </div>
       </div>
       <%--<div class="containers" id="member">
           <div class="wrapper clearfix">
               <h3>會員登入</h3>
                <div class="login">
                    <div class="card">
                        <div class="front">
                            <h1>加入會員</h1>
                            <span class="fa fa-user-circle-o fa-5x"></span>
                        </div>
                        <div class="back">
                           <a href="#">點我加入會員</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="front">
                            <h1>會員登入</h1>
                            <span class="fa fa-sign-in fa-5x"></span>
                        </div>
                        <div class="back">
                            <span>會員帳號：<input type="text"></span>
                            <br>
                            <br>
                            <span>會員密碼：<input type="text"></span>
                            <br>
                            <br>
                            <asp:Button ID="login_btn" runat="server" Text="登入" />
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        
        <div class="containers" id="farm">
            <div class="wrapper">
               <div class="farmpresent">
                   <h3>小農介紹</h3>
               </div>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                      <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
<!--                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>-->
                      </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                       <div class="card">
                           <div class="pic">
                                <a href="#">
                                    <img src="../images/farm1.png" />

                                </a>
                            </div>
                            <div class="pic">
                                <a href="#">
                                    <img src="../images/farm2.png" />
                                </a>
                            </div>
                            <div class="pic">
                                <a href="#">
                                    <img src="../images/farm1.png" />
                                </a>
                            </div>
                            <div class="pic">
                                <a href="#">
                                    <img src="../images/farm2.png" />
                                </a>
                            </div>
                       </div>
                        </div>
                    <div class="carousel-item">
                        <div class="card">
                           <div class="pic">
                                <a href="#">
                                    <img src="../images/farm1.png" />
                                </a>
                            </div>
                            <div class="pic">
                                <a href="#">
                                    <img src="../images/farm2.png" />
                                </a>
                            </div>
                            <div class="pic">
                                <a href="#">
                                    <img src="../images/farm1.png" />
                                </a>
                            </div>
                            <div class="pic">
                                <a href="#">
                                    <img src="../images/farm2.png" />
                                </a>
                            </div>
                       </div>
                    </div>
<!--
                    <div class="carousel-item">
                        <img src="images/header3.png" alt="Third slide" >
                    </div>
-->
                </div>
<!--
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
-->
                </div>
            </div>
        </div>
          <div class="containers" id="contact">
             <div class="wrapper">
                 <h3>聯絡我</h3>
                 <div class="icon">
                 <a href="#"><span class="fa fa-envelope fa-5x"><h4>nightcat41@gmail.com</h4></span></a>
                 <a href="#"><span class="fa fa-facebook-square fa-5x"><h4>小農之家</h4></span></a>
                 <a href="#"><span class="fa fa-phone fa-5x"><h4>0912345678</h4></span></a>
                 </div>
             </div>
             
          </div>
          <div id="Login"><a href="member.aspx"><span class="fa fa-sign-in fa-3x"><p>會員登入</p></span></a></div>
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
                <a style="display:scroll;" href="#" title="" onFocus="if(this.blur)this.blur()">
                <h2>TOP</h2>
                <span class="fa fa-arrow-circle-up fa-5x"></span>
                </a>
                </div>
             </div>
          </footer>
    </form>
</body>
</html>
