<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>

  <!--<link href="/" rel="icon">-->
  <!--todo 标签图标是否只能用ico格式-->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="js/html5shiv.min.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <div class="my-navbar">
    <div class="box1">
      <span class="item"><a href="index.jsp"><img src="image/apple.svg"/></a></span>
      <span class="item"><a href='guihua.jsp'><img src="" alt="规划"/></a></span>
      <span class="item"><a href='shijianliebiao.jsp'><img src="" alt="事件"/></a></span>
      <span class="item"><a href='guanyu.jsp'><img src="" alt="关于"/></a></span>
      <button style="display:none;">
        <span class="icon-bar"></span>
      </button>
    </div>
  </div>


  <div class="container-fluid" style="padding:0;">
    <!--<div class="row my-main1">-->
      <!--<div class="col-xs-12">-->
        <!--<a href="pic1-flex.jsp"><img src="image/iphone_alt_large_2x.jpg" class="img-responsive"></a>-->
      <!--</div>-->
    <!--</div>-->

    <div class="row my-main1">
      <div class="col-xs-12">
        <div class="carousel slide" id="my-carousel" data-ride="carousel" data-interval="2000">

          <!--必须： 轮播广告内容-->
          <div class="carousel-inner"><!--必须，有且只有一个-->
            <div class="item active">
              <a href="shijian1.jsp">
                <img src="image/iphone_alt_large_2x.jpg">
              </a>

              <!--<div class="carousel-caption">-->
              <!--<h4>page 1</h4>-->
              <!--<p>Lorem ipsum dolor sit amet</p>-->
              <!--</div>-->
            </div>
            <div class="item">
              <a href="shijian2.jsp">
                <img src="image/iphone_alt_large_2x.jpg">
              </a>
            </div>
            <div class="item">
              <a href="shijian3.jsp">
                <img src="image/iphone_alt_large_2x.jpg">
              </a>
            </div>
          </div>
          <!--引导器，就是三个小圆圈-->
          <ul class="carousel-indicators">
            <li data-target="#my-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#my-carousel" data-slide-to="1"></li>
            <li data-target="#my-carousel" data-slide-to="2"></li>
          </ul>
          <!--控制箭头-->
          <a href="#my-carousel" class="carousel-control left" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a href="#my-carousel" class="carousel-control right" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>

        </div>
      </div>
    </div>



    <div class="row my-main2">
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-1" href="pic21.jsp"><img src="image/jfk_large_2x.jpg" class="img-responsive"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-2" href="pic22.jsp"><img src="image/wwdc17_large_2x.jpg" class="img-responsive"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-3" href="pic23.jsp"><img src="image/watch_large_2x.jpg" class="img-responsive"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-4" href="pic24.jsp"><img src="image/ipad_large_2x.jpg" class="img-responsive"></a>
      </div>
    </div>
  </div>

  <div class="my-footer">
    <div class="box2">
      <div class="item footer1"><img src="image/apple.svg"/></div>
      <div class="item footer1" style="color:#888;">
        <p>中国 上海 静安区万荣路700好A3幢环上大影视园区</p>
        <p>Building A3, No.700, WanRong Road, JingAn District, Shanghai, China</p>
        <p>leyaomusic@164.com</p>
      </div>
    </div>
  </div>




<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>


</body>
</html>