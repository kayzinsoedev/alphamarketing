<div id="slideshow<?= $module; ?>" class="relative owl-carousel"  style="opacity: 1; width: 100%;">
  <?php foreach ($banners as $banner) { ?>
    <div class="relative <?= $banner['theme']; ?> h100">
      <img data-src="<?= $banner['image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive hidden-xs owl-lazy" />
      <img data-src="<?= $banner['mobile_image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive visible-xs owl-lazy" />


      <?php if($banner['description']){ ?>
        <div class="slider-slideshow-description w100 absolute position-center-center background-type-<?= $banner['theme']; ?>">
          <div class="container custom-banner">
            <!-- <div class="slider-slideshow-description-texts"> -->
              <?php if($banner['textalign'] !="center"){ ?>
                      <div class="slider-slideshow-description-texts" style="float:<?=$banner['textalign'];?>">
              <?php }else{ ?>
                      <div class="slider-slideshow-description-texts" style="margin-left:auto;margin-right:auto">
              <?php }  ?>
              <div class="line hidden"></div>

              <span class="banner-desc"><?= html($banner['description']); ?></span>

              <?php if ( $banner['link'] && $banner['link_text'] ) { ?>
              <div class="slider-slideshow-description-link">

                <?php if($banner['btn_color'] == "#fff"){ ?>
                <a href="<?= $banner['link']; ?>" class="btn btn-primary" style="background-color:<?=$banner['btn_color'];?> !important; color:#0e764d !important;">
                      <?= $banner['link_text']; ?>
                </a>
                  <?php }else{ ?>
                    <a href="<?= $banner['link']; ?>" class="btn btn-primary" style="background-color:<?=$banner['btn_color'];?> !important; color:#fff !important;">
                          <?= $banner['link_text']; ?>
                    </a>
                  <?php  } ?>

              </div>
              <!--class:slider-slideshow-description-link-->
              <?php } ?>
            </div>
            <!--class:slider-slideshow-description-texts-->
          </div>
          <!--class:container-->
        </div>
        <!--class:slider-slideshow-description-->
      <?php } ?>

      <?php if($banner['link']){ ?>
        <a href="<?= $banner['link']; ?>" class="block absolute position-left-top w100 h100"></a>
      <?php } ?>
      <div class="banner-overlay"></div>
    </div>
  <?php } ?>
</div>
<?php //include('slideshow_script_slick.tpl'); ?>
<?php include('slideshow_script_owl.tpl'); ?>

<?php if($config_parallax_slider) { ?>
  <style>
        body .section-space.slideshow +  .section-space{
            margin-top: calc((<?=$parallax_margin;?> /19.2) * 1vw);
        }
        @media (max-width: 767px){
          body .section-space.slideshow +  .section-space{
              margin-top: calc((<?=$mobile_parallax_margin;?> /7.67) * 1vw)!important;
          }
        }
  </style>
  <?php } ?>
