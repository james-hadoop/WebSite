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

  <!--[if lt IE 9]>
  <script src="js/html5shiv.min.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <div class="my-navbar">
    <div class="box1">
      <span class="item"><a href="index.html"><img src="image/header/h0.svg" alt="" height="54px"/></a></span>
      <span class="item"><a href='guihua.html'><img src="image/header/h1.svg" alt="" height="54px"/></a></span>
      <span class="item"><a href='shijianliebiao.html'><img src="image/header/h2.svg" alt="" height="54px"/></a></span>
      <span class="item"><a href='guanyu.html'><img src="image/header/h3.svg" alt="" height="54px"/></a></span>
    </div>
  </div>


  <!-- Swiper -->
  <div class="swiper-container gallery-top">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
        <a class="items_a">
          <img class="items" src="image/item_list/item_list1.jpg">
        </a>
      </div>
      <div class="swiper-slide">
        <a class="items_a">
          <img class="items" src="image/item_list/item_list2.jpg">
        </a>
      </div>
      <div class="swiper-slide">
        <a class="items_a">
          <img class="items" src="image/item_list/item_list3.jpg">
        </a>
      </div>
      <div class="swiper-slide">
        <a class="items_a">
          <img class="items" src="image/item_list/item_list4.jpg">
        </a>
      </div>
      <div class="swiper-slide">
        <a class="items_a">
          <img class="items" src="image/item_list/item_list5.jpg">
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
      <a class="items_a">
        <img class="items" src="image/item_list/item_list1.jpg">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items" src="image/item_list/item_list2.jpg">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items" src="image/item_list/item_list3.jpg">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items" src="image/item_list/item_list4.jpg">
      </a>
    </div>
    <div class="swiper-slide">
      <a class="items_a">
        <img class="items" src="image/item_list/item_list5.jpg">
      </a>
    </div>

    </div>
  </div>

  <div class="my-footer">
    <div class="box2">
      <img src="image/footer/f1.png" style="width:100%;" alt="address"/>
    </div>
  </div>




<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
  <!-- Swiper JS -->
  <script src="js/swiper.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var galleryTop = new Swiper('.gallery-top', {
      nextButton: '.swiper-button-next',
      prevButton: '.swiper-button-prev',
      spaceBetween: 3,
      loop:true,
      loopedSlides: 5, //looped slides should be the same
      autoplay : 3000,
      speed:300,
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      spaceBetween: 3,
      slidesPerView: 5,//几张图
      touchRatio: 0.2,
      loop:true,
      loopedSlides: 5, //looped slides should be the same
      slideToClickedSlide: true,
      centeredSlides:true
    });
    galleryTop.params.control = galleryThumbs;
    galleryThumbs.params.control = galleryTop;


  </script>

</body>
</html>