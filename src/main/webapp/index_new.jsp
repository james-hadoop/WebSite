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
<link href="css/index.css" rel="stylesheet">
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

				$(".items_a").each(
						function(index, value) {
							var targetUrl = 'items.jsp?parent_item_id='
									+ data.rows[index].itemId;
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

 <!-- Swiper -->
 <div class="swiper-container gallery-top">
  <div class="swiper-wrapper"></div>
 </div>


</body>
</html>