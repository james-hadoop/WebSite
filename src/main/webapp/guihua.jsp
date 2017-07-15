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

  <script>
    window.onload = function()
    {
      setTimeout(myAjax,100);
    }
  </script>
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

<div class="container outside">
  <div class="row inside">
    <div class="col-xs-12">
      <div class="row my-music">

      </div>
    </div>
  </div>

</div>



<div class="my-footer">
  <div class="box2">
    <div class="item footer1"><img src="image/apple.svg"/></div>
    <div class="item footer1">
      <p>中国 上海 静安区万荣路700好A3幢环上大影视园区</p>
      <p>Building A3, No.700, WanRong Road, JingAn District, Shanghai, China</p>
      <p>leyaomusic@164.com</p>
    </div>
  </div>
</div>




<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
  function myAjax(){
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
    $.ajax("guihua.txt", {
      type : "GET",
      data : "this is guihua",
      dataType : "text",
      success : function(data, textStatus){
        // data：服务器端响应数据，数据格式是由上面的dataType指定的
        // textStatus：成功信息
        var aUrls=eval("("+data+")")['urls'];
        var oDivMyMusic = document.getElementsByClassName("my-music")[0];
        if (aUrls.length == 0)
        {
          var oDiv = document.createElement('div');
          oDiv.setAttribute('class', 'col-xs-12');
          var oA = document.createElement('a');
          oA.setAttribute('class', 'thumbnail');
          var oImg = document.createElement('img');
          oImg.setAttribute('src', 'image/iphone_alt_large_2x.jpg');
          oImg.setAttribute('class', 'img-responsive');
          oA.appendChild(oImg);
          oDiv.appendChild(oA);
          oDivMyMusic.appendChild(oDiv);
        } else {
          $.each(aUrls, function (key, value) {
            var sSrc = 'image/music/' + value['url'];
            var oDiv = document.createElement('div');
            oDiv.setAttribute('class', 'col-xs-12');
            var oA = document.createElement('a');
            oA.setAttribute('class', 'thumbnail');
            var oImg = document.createElement('img');
            oImg.setAttribute('src', sSrc);
            oImg.setAttribute('class', 'img-responsive');
            oA.appendChild(oImg);
            oDiv.appendChild(oA);
            oDivMyMusic.appendChild(oDiv);
          })//$.each是jquery的遍历方法
        }
      },
      error : function(XMLHttpRequest, textStatus, errorThrown){
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
</html>