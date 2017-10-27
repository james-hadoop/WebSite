<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/swiper.min.css">
<link href="css/main.css" rel="stylesheet">

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Swiper JS -->
<script src="js/swiper.min.js"></script>

<!--[if lt IE 9]>
  <script src="js/html5shiv.min.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
  
  <script>
    $(function() {
        var getData = {
            parent_item_id : 0,
            item_type : 1
        };

        $.ajax("web_site/getItemUrls", {
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
                        id : data.rows[index % 5].itemId
                    });
                    $(this).attr({
                        src : 'image/' + data.rows[index % 5].itemUrl
                    });
                });

                $(".items_a").each(function(index, value) {
                    var targetUrl = 'items.jsp?parent_item_id=' + data.rows[index % 5].itemId;
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
  <div class="swiper-wrapper">
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>

  </div>
  <!-- Add Arrows -->
  <div class="swiper-button-next swiper-button-white"></div>
  <div class="swiper-button-prev swiper-button-white"></div>
 </div>
 <div class="swiper-container gallery-thumbs">
  <div class="swiper-wrapper">

   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>
   <div class="swiper-slide">
    <a class="items_a"> <img class="items" src="">
    </a>
   </div>

  </div>
 </div>

<%@ include file="footer.jsp"%>

 <!-- Initialize Swiper -->
 <script>
        var galleryTop = new Swiper('.gallery-top', {
            nextButton : '.swiper-button-next',
            prevButton : '.swiper-button-prev',
            spaceBetween : 3,
            loop : true,
            loopedSlides : 5, //looped slides should be the same
            autoplay : 3000,
            speed : 1000,
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

</body>
</html>