<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
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

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
    $(function() {
        var getData = {
            parent_item_id : 0,
            item_type : 1
        };

        $.ajax("leyao_web/getItemUrls", {
            type : "GET",
            data : getData,
            dataType : "json",
            success : function(data, textStatus) {
                if (data.total == 0) {
                    alert("No resouces found!");
                    return;
                }

                $(".items").each(function(index, value) {
                    $(this).attr({
                        id : data.rows[index].itemId
                    });
                    $(this).attr({
                        src : 'image/' + data.rows[index].itemUrl
                    });
                });

                $(".items_a").each(function(index, value) {
                    var targetUrl = 'items.jsp?parent_item_id=' + data.rows[index].itemId;
                    console.info('targetUrl=' + targetUrl);
                    $(this).attr({
                        href : targetUrl
                    });
                });
            },
            error : function(XMLHttpRequest, textStatus, errorThrown) {
                alert(textStatus);//error
                alert(XMLHttpRequest.status);//404
            }
        });
    });
</script>
</head>
<body>
  <%@ include file="header.jsp"%>

  <div class="container-fluid" style="padding: 0;">
    <!--<div class="row my-main1">-->
    <!--<div class="col-xs-12">-->
    <!--<a href="pic1-flex.html"><img src="image/iphone_alt_large_2x.jpg" class="img-responsive"></a>-->
    <!--</div>-->
    <!--</div>-->

    <div class="row my-main1">
      <div class="col-xs-12">
        <div class="carousel slide" id="my-carousel"
          data-ride="carousel" data-interval="2000">

          <!--必须： 轮播广告内容-->
          <div class="carousel-inner">
            <!--必须，有且只有一个-->

            <div class="item active">
              <a class="items_a">
                <p style="text-align: center;">
                  <img class="items" src="">
                </p>
              </a>

              <!--<div class="carousel-caption">-->
              <!--<h4>page 1</h4>-->
              <!--<p>Lorem ipsum dolor sit amet</p>-->
              <!--</div>-->
            </div>
            <div class="item">
              <a class="items_a">
                <p style="text-align: center;">
                  <img class="items" src="">
                </p>
              </a>
            </div>
            <div class="item">
              <a class="items_a">
                <p style="text-align: center;">
                  <img class="items" src="">
                </p>
              </a>
            </div>
            <div class="item">
              <a class="items_a">
                <p style="text-align: center;">
                  <img class="items" src="">
                </p>
              </a>
            </div>
            <div class="item">
              <a class="items_a">
                <p style="text-align: center;">
                  <img class="items" src="">
                </p>
              </a>
            </div>

          </div>
          <!--引导器，就是三个小圆圈-->
          <ul class="carousel-indicators">
            <li data-target="#my-carousel" data-slide-to="0"
              class="active"></li>
            <li data-target="#my-carousel" data-slide-to="1"></li>
            <li data-target="#my-carousel" data-slide-to="2"></li>
            <li data-target="#my-carousel" data-slide-to="3"></li>
            <li data-target="#my-carousel" data-slide-to="4"></li>
          </ul>
          <!--控制箭头-->
          <a href="#my-carousel" class="carousel-control left"
            data-slide="prev"> <span
            class="glyphicon glyphicon-chevron-left"></span>
          </a> <a href="#my-carousel" class="carousel-control right"
            data-slide="next"> <span
            class="glyphicon glyphicon-chevron-right"></span>
          </a>

        </div>
      </div>
    </div>

    <div class="row my-main2">
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a class="items_a"><img src="" class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a class="items_a"><img src="" class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a class="items_a"><img src="" class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a i class="items_a"><img src=""
          class="img-responsive items"></a>
      </div>
    </div>
  </div>

  <%@ include file="footer.jsp"%>
</body>
</html>