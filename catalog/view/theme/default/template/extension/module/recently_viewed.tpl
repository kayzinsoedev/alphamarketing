<?php if($products){ ?>
<div class="recently-viewed">
  <h2><?php echo $heading_title; ?></h2>
  
  <div class="featured-module">
    <div class="featured section relative">
      <div class="product-layout" id="recently_viewed">
        <?php foreach ($products as $product) { ?>
            <?= html($product); ?>
        <?php } ?>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  $("#recently_viewed").slick({
    dots: false,
    infinite: true,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 1,
    <?php if($autoplay){ ?>
      autoplay: true,
      autoplaySpeed: <?= $autoplay ?>,
    <?php } ?>
    responsive: [
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
        }
      },
      {
        breakpoint: 541,
        settings: {
          slidesToShow: 2,
          arrows: false,
          autoplay: true,
          autoplaySpeed: <?= $mobile_autoplay ?>
        }
      },
      {
        breakpoint: 415,
        settings: {
          slidesToShow: 2,
          arrows: false,
          autoplay: true,
          autoplaySpeed: <?= $mobile_autoplay ?>
        }
      },
      {
        breakpoint: 376,
        settings: {
          slidesToShow: 1,
          arrows: false,
          autoplay: true,
          autoplaySpeed: <?= $mobile_autoplay ?>
        }
      }
    ],
    prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><img style='width: 17px' src='./image/catalog/AlphaPoineer/general/left.png'></div></div>",
    nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><img style='width: 17px' src='./image/catalog/AlphaPoineer/general/right.png'></div></div>",
  });
</script>
<?php } ?>