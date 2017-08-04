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
<link href="css/swiper.min.css" rel="stylesheet">
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

                var count = 0;
                $(".items_lunbo").each(function(index, value) {
                    var itemId = data.rows[index].itemId;

                    $(this).attr({
                        id : itemId
                    });
                    $(this).attr({
                        src : 'image/' + data.rows[index].itemUrl
                    });
                });

////////////////////////////////////////
                var galleryTop = new Swiper('.gallery-top', {
                    nextButton : '.swiper-button-next',
                    prevButton : '.swiper-button-prev',
                    spaceBetween : 3,
                    loop : true,
                    loopedSlides : 5, //looped slides should be the same
                    autoplay : 3000,
                    speed : 300,
                });
                var galleryThumbs = new Swiper('.gallery-thumbs', {
                    spaceBetween : 3,
                    slidesPerView : 5,//几张图
                    touchRatio : 0.2,
                    loop : true,
                    loopedSlides : 5, //looped slides should be the same
                    slideToClickedSlide : true,
                    centeredSlides : true
                });
                galleryTop.params.control = galleryThumbs;
                galleryThumbs.params.control = galleryTop;
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
    <div class="swiper-wrapper">
      <div class="swiper-slide">
  <div class="swiper-slide">
   <a class="items_lunbo_a"> <img class="items_lunbo" src="">
   </a>
  </div>
  <div class="swiper-slide">
   <a class="items_lunbo_a"> <img class="items_lunbo" src="">
   </a>
  </div>
  <div class="swiper-slide">
   <a class="items_lunbo_a"> <img class="items_lunbo" src="">
   </a>
  </div>
  <div class="swiper-slide">
   <a class="items_lunbo_a"> <img class="items_lunbo" src="">
   </a>
  </div>
  <div class="swiper-slide">
   <a class="items_lunbo_a"> <img class="items_lunbo" src="">
   </a>
  </div>
  <!-- Add Arrows -->
  <div class="swiper-button-next swiper-button-white"></div>
  <div class="swiper-button-prev swiper-button-white"></div>
 </div>
 </div></div>



<div class="swiper-container gallery-thumbs">
    <div class="swiper-wrapper">

    <div class="swiper-slide">
      <a class="items_a">
        <img class="items">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items">
      </a>
    </div>

    </div>
  </div>

 <script src="js/swiper.min.js"></script>
 <script>
        var galleryTop = new Swiper('.gallery-top', {
            nextButton : '.swiper-button-next',
            prevButton : '.swiper-button-prev',
            spaceBetween : 3,
            loop : true,
            loopedSlides : 5, //looped slides should be the same
            autoplay : 3000,
            speed : 300,
        });
        var galleryThumbs = new Swiper('.gallery-thumbs', {
            spaceBetween : 3,
            slidesPerView : 5,//几张图
            touchRatio : 0.2,
            loop : true,
            loopedSlides : 5, //looped slides should be the same
            slideToClickedSlide : true,
            centeredSlides : true
        });
        galleryTop.params.control = galleryThumbs;
        galleryThumbs.params.control = galleryTop;
    </script>
 <%@ include file="footer.jsp"%>
</body>
</html>