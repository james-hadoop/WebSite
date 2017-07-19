<!DOCTYPE html>
<html lang="zh-cn">
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
    <span class="item"><a href="index.html"><img src="image/apple.svg"/></a></span>
    <span class="item"><a href='guihua.html'><img src="" alt="规划"/></a></span>
    <span class="item"><a href='shijianliebiao.html'><img src="" alt="事件"/></a></span>
    <span class="item"><a href='guanyu.html'><img src="" alt="关于"/></a></span>
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
            var getData = {
            parent_item_id : 5,
            item_type : 1
        };
    
    $.ajax("leyao_web/getItemUrls", {
      type : "GET",
      data : getData,
      dataType : "text",
      success : function(data, textStatus){
          var aUrls = eval("(" + data + ")")['rows'];
          var oLunbo1 = document.getElementById("lunbo1");
          var sLunbo1 = 'image/' + aUrls[0]["itemUrl"];
          console.info('sLunbo1='+sLunbo1);
          
        var oDivMyMusic = document.getElementsByClassName("my-music")[0];

          $.each(aUrls, function (key, value) {
            var oDiv = document.createElement('div');
            oDiv.setAttribute('class', 'col-xs-12');
            var oA = document.createElement('a');
            oA.setAttribute('class', 'thumbnail');
            var oImg = document.createElement('img');
            oImg.setAttribute('src', sLunbo1);
            oImg.setAttribute('class', 'img-responsive');
            oA.appendChild(oImg);
            oDiv.appendChild(oA);
            oDivMyMusic.appendChild(oDiv);
          })//$.each是jquery的遍历方法
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