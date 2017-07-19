<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
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

<script>
    window.onload = function() {
        setTimeout(myAjax, 100);
    }
</script>
</head>
<body>
  <!--<div class="my-navbar">-->
  <!--<div class="box1">-->
  <!--<span class="item"><a href="index.html"><img src="image/logo.png" class="img-responsive"/></a></span>-->
  <!--<span class="item"><a href='guihua.html'><img src="" alt="规划"/></a></span>-->
  <!--<span class="item"><a href='shijianliebiao.html'><img src="" alt="事件"/></a></span>-->
  <!--<span class="item"><a href='guanyu.html'><img src="" alt="关于"/></a></span>-->
  <!--<button style="display:none;">-->
  <!--<span class="icon-bar"></span>-->
  <!--</button>-->
  <!--</div>-->
  <!--</div>-->


  <div class="container-fluid" style="padding: 0;">
    <div class="row my-main1">
      <div class="col-xs-12">
        <a href="shijian1.html"><img id="lunbo1"
          class="img-responsive"></a>
      </div>
    </div>

    <!--<div class="row my-main1">-->
    <!--<div class="col-xs-12">-->
    <!--<div class="carousel slide" id="my-carousel" data-ride="carousel" data-interval="2000">-->

    <!--&lt;!&ndash;必须： 轮播广告内容&ndash;&gt;-->
    <!--<div class="carousel-inner">&lt;!&ndash;必须，有且只有一个&ndash;&gt;-->
    <!--<div class="item active">-->
    <!--<a href="shijian1.html">-->
    <!--<img class="lunbo" src="">-->
    <!--</a>-->

    <!--&lt;!&ndash;<div class="carousel-caption">&ndash;&gt;-->
    <!--&lt;!&ndash;<h4>page 1</h4>&ndash;&gt;-->
    <!--&lt;!&ndash;<p>Lorem ipsum dolor sit amet</p>&ndash;&gt;-->
    <!--&lt;!&ndash;</div>&ndash;&gt;-->
    <!--</div>-->
    <!--<div class="item">-->
    <!--<a href="shijian2.html">-->
    <!--<img class="lunbo" src="">-->
    <!--</a>-->
    <!--</div>-->
    <!--<div class="item">-->
    <!--<a href="shijian3.html">-->
    <!--<img class="lunbo" src="">-->
    <!--</a>-->
    <!--</div>-->
    <!--<div class="item">-->
    <!--<a href="shijian4.html">-->
    <!--<img class="lunbo" src="">-->
    <!--</a>-->
    <!--</div>-->
    <!--<div class="item">-->
    <!--<a href="shijian5.html">-->
    <!--<img class="lunbo" src="">-->
    <!--</a>-->
    <!--</div>-->
    <!--</div>-->
    <!--&lt;!&ndash;引导器，就是三个小圆圈&ndash;&gt;-->
    <!--<ul class="carousel-indicators">-->
    <!--<li data-target="#my-carousel" data-slide-to="0" class="active"></li>-->
    <!--<li data-target="#my-carousel" data-slide-to="1"></li>-->
    <!--<li data-target="#my-carousel" data-slide-to="2"></li>-->
    <!--<li data-target="#my-carousel" data-slide-to="3"></li>-->
    <!--<li data-target="#my-carousel" data-slide-to="4"></li>-->

    <!--</ul>-->
    <!--&lt;!&ndash;控制箭头&ndash;&gt;-->
    <!--<a href="#my-carousel" class="carousel-control left" data-slide="prev">-->
    <!--<span class="glyphicon glyphicon-chevron-left"></span>-->
    <!--</a>-->
    <!--<a href="#my-carousel" class="carousel-control right" data-slide="next">-->
    <!--<span class="glyphicon glyphicon-chevron-right"></span>-->
    <!--</a>-->

    <!--</div>-->
    <!--</div>-->
    <!--</div>-->



    <div class="row my-main2">
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-1" class="items_a"><img src="" class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-2" class="items_a"><img src="" class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-3" class="items_a"><img src="" class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a id="my-img2-4" class="items_a"><img src="" class="img-responsive items"></a>
      </div>
    </div>
  </div>






  <script src="js/jquery-1.11.3.js"></script>
  <script src="js/bootstrap.min.js"></script>

  <script>
            function myAjax() {
                var getData = {
                    parent_item_id : 0,
                    item_type : 1
                };

                // $.ajax( url, [setting] )方法
                // url参数：必要参数，表示Ajax异步请求的地址
                // setting参数：可选参数，表示设置Ajax异步请求的相关参数
                // setting参数的格式为"{ key : value, key : value,... }"
                // setting参数的选项：
                // type选项：指定当前Ajax异步请求的请求方式（GET或POST）
                // data选项：指定当前Ajax异步请求的参数内容,即向服务器发送的内容
                // dataType选项：指定服务器端响应的数据类型
                // text：表示响应的数据类型为文本
                // xml：表示响应的数据类型为xml
                // json：表示响应的数据类型为json
                // success选项：Ajax请求成功后的回调函数
                // error选项：Ajax请求失败后的回调函数
                // async选项：指定当前Ajax请求是否异步
                // 默认值为true（表示为异步）
                $.ajax("leyao_web/getItemUrls", {
                    type : "GET",
                    data : getData,
                    dataType : "json",
                    success : function(data, textStatus) {

                        /*	if(0==eval("(" + data + ")")['total']){
                        	return;
                        }
                        
                        // data：服务器端响应数据，数据格式是由上面的dataType指定的
                        // textStatus：成功信息
                        var aUrls = eval("(" + data + ")")['rows'];
                        var oLunbo1 = document.getElementById("lunbo1");
                        var sLunbo1 = 'image/' + aUrls[0]["itemUrl"];
                        
                        console.info(sLunbo1);
                        
                        oLunbo1.setAttribute('src', sLunbo1);
                        aUrls.shift(); */
                        for ( var key in data.rows) {
                            if (0 == key) {
                                var oLunbo1 = document.getElementById("lunbo1");
                                var row = data.rows[key];
                                console.info(row);
                                var sLunbo1 = 'image/' + row.itemUrl;

                                oLunbo1.setAttribute('src', sLunbo1);
                                oLunbo1.setAttribute('id', row.itemId);
                            } else {
                                var row = data.rows[key];
                                var oImg = document.getElementsByClassName("items")[key - 1];
                                var sSrc = 'image/' + row.itemUrl;
                                //oImg.setAttribute('src', sSrc);
                                //oImg.setAttribute('id', row.itemId);
                            }
                        }

                        $("#lunbo1").attr({
                            id : "hello"
                        });
                        
                        $(".items_a").each(function(index, value) {
                            var targetUrl = 'items.jsp?parent_item_id=' + data.rows[index].itemId;
                            console.info('targetUrl=' + targetUrl);
                            $(this).attr({
                                href : targetUrl
                            });
                        });

                        $(".items").each(function(index, value) {
                            $(this).attr({
                                id : data.rows[index].itemId
                            });
                            $(this).attr({
                                src : 'image/' + data.rows[index + 1].itemUrl
                            });
                        });

                        /*           for(var i=0;i<aUrls.length;i++){
                         var oImg = document.getElementsByClassName("lunbo")[i];
                         var sSrc = 'image/' + aUrls[i]['itemUrl'];
                         oImg.setAttribute('src', sSrc);
                         } */
                    },
                    error : function(XMLHttpRequest, textStatus, errorThrown) {
                        // XMLHttpRequest：Ajax的核心对象
                        // textStatus：错误信息
                        // timeout：请求超时
                        // error：请求错误
                        // notmodified：没有修改（服务器端的资源）304
                        // parsererror：解析错误
                        // errorThrown：可选，捕获的异常对象
                        alert(textStatus);//error
                        alert(XMLHttpRequest.status);//404
                    }
                });
            }
        </script>
</body>

<%@ include file="footer.jsp"%>
</html>