<h2 class="main-heading">
  <?php echo $main_title; ?>
</h2>
<div class="logo-slider">
  <?php foreach ($manufacturers as $item) { ?>
    <div class="item">
    <a href="<?php echo $item['href']?>" target="_blank">
      <img src="<?php echo $item['image']; ?>" class="img-responsive"/>
    </a>
    </div>
  <?php } ?>
</div>
<div class="centered" style="margin-top: 30px; padding-bottom: 20px">
  <a href="./products" class="btn btn-primary btn-sm btn-logo-slider">Shop Now</a>
</div>
<script>
    jQuery(document).ready(function ($) {
          $(".logo-slider").slick({
          dots: false,
          infinite: false,
          speed: 300,
          arrows:true,
          slidesToShow: 5,// items to show on page
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 1401,
              settings: {
                slidesToShow: 5,
              }
            },
            {
              breakpoint: 1201,
              settings: {
                slidesToShow: 4,
              }
            },
            {
              breakpoint: 993,
              settings: {
                slidesToShow: 4,
              }
            },
            {
              breakpoint: 769,
              settings: {
                slidesToShow: 3,
                arrows: false,
                autoplay: true,
              }
            },
            {
              breakpoint: 541,
              settings: {
                slidesToShow: 2,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            },
            {
              breakpoint: 429,
              settings: {
                slidesToShow: 2,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            },
            {
              breakpoint: 415,
              settings: {
                slidesToShow: 2,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            },
            {
              breakpoint: 376,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            }
          ],
          prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><img style='width: 17px' src='./image/catalog/AlphaPoineer/general/left.png'/></div></div>",
          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><img class='logo_slider_arrow_right' style='width: 17px' src='./image/catalog/AlphaPoineer/general/right.png'/></div></div>",
        });
      });
</script>
