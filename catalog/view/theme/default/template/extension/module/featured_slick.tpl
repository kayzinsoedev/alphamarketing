<div class="featured-module featured_<?= $uqid; ?>">
  <h2 class="text-center target-heading hidden">
    <?= $heading_title; ?>
  </h2>

  <!-- <div class="featured-div"> -->
  <div class="featured-main">
        <?php if($description){ ?>
          <div class="left-fproduct mg-b30 f-desc">
            <p><?= $description; ?></p>
            <ul class="chin-cate-btn">
                 <li class="prev cate-btn"> <img src='image/catalog/AlphaPoineer/general/left.png' alt='arrow' class="arrow-img"/></li>
                 <li class="next cate-btn"><img src='image/catalog/AlphaPoineer/general/right.png' alt='arrow' class="arrow-img"/></li>
             </ul>
          </div>
        <?php } ?>
        <div class="right-fproduct">
        <div class="featured section relative f-content" style="opacity: 0;">
          <div id="featured_slider_<?= $uqid; ?>" >
            <?php foreach ($products as $product) { ?>
              <?= html($product); ?>
            <?php } ?>
          </div>
        </div>
    </div>
          <script type="text/javascript">

            $(window).load(function(){
              setTimeout(function () {
                featured_product_slick<?= $uqid; ?>();
                AOS.init();
              }, 250);
            });

            function featured_product_slick<?= $uqid; ?>(){
              $("#featured_slider_<?= $uqid; ?>").on('init', function (event, slick) {
                $('#featured_slider_<?= $uqid; ?>').parent().removeAttr('style');
              });

              $("#featured_slider_<?= $uqid; ?>").slick({
                dots: false,
                infinite: false,
                speed: 300,
                slidesToShow: 3,
                slidesToScroll: 1,
                rows:2,
                prevArrow: $('.prev'),
                nextArrow: $('.next'),
                responsive: [
                  {
                    breakpoint: 1201,
                    settings: {
                      slidesToShow: 3,
                    }
                  },
                  {
                    breakpoint: 993,
                    settings: {
                      slidesToShow: 3,
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

              });


            }
          </script>
        </div>


</div>
