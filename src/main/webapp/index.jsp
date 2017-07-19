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
                    }
                }

                $(".items_a").each(function(index, value) {
                    var targetUrl = 'items.jsp?parent_item_id=' + data.rows[index].itemId;
                    console.info('targetUrl=' + targetUrl);
                    $(this).attr({
                        href : targetUrl
                    });
                });

                $(".items").each(function(index, value) {
                    $(this).attr({
                        id : data.rows[index].itemId+1
                    });
                    $(this).attr({
                        src : 'image/' + data.rows[index + 1].itemUrl
                    });
                });
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
    });
</script>
</head>
<body>
  <%@ include file="header.jsp"%>

  <div class="container-fluid" style="padding: 0;">
    <div class="row my-main1">
      <div class="col-xs-12">
        <a class="items_a"><img id="lunbo1"
          class="img-responsive"></a>
      </div>
    </div>

    <div class="row my-main2">
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a class="items_a"><img src=""
          class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a class="items_a"><img src=""
          class="img-responsive items"></a>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <a  class="items_a"><img src=""
          class="img-responsive items"></a>
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