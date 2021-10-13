<?php echo $header; ?>
<div>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
</div>
<div class="container">
  
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="testimonial_<?=$testimonial_layout;?> <?php echo $class; ?>">
      <?php echo $content_top; ?>
      <?php echo $content_bottom; ?>
      <h2><?php echo $heading_title; ?></h2>
        <div class="testimonial-content">

          <?php if(isset($testimonials) && $testimonials) {  ?>
            <div class="testimonials flex gutter-row three-col-row">
                <?php foreach($testimonials as $testimonial) {  ?>
                        <div class="testimonial text-center <?=!$testimonial['image'] ? 'no-image' : '';?>  transition pointer" data-toggle="modal" data-target="#TestimonialPopup_<?=$testimonial['review_id'];?>">
                            <?php if($testimonial['image']) {?>
                                <div class="testimonial-image m-b">
                                    <img src="image/<?= $testimonial['image'];?>" class="transition img-responsive"/>
                                </div>
                            <?php }else { ?>
                              <div class="testimonial-placeholder m-b">
                                 
                              </div>
                            <?php } ?>

                            <div class="testimonial-text italic m-b">
                                <?= $testimonial['short_excerpt'];?>
                            </div>
                            <div class="testimonial-name">
                                <h4><?= $testimonial['author'];?></h4>
                            </div>
                        </div>
                <?php } ?>
            </div>
            <?php foreach($testimonials as $testimonial) {  ?>
                <!-- Modal -->
                <div class="modal fade" id="TestimonialPopup_<?=$testimonial['review_id'];?>" role="dialog">
                <div class="modal-dialog modal-lg ">
                    <div class="modal-content ">
                    <div class="modal-body p-trbl-xl">
                        <div class=" modal-close-button close" data-dismiss="modal"></div>
        
                        <div class="popup-testi flex">

                          <?php if($testimonial['image']) {?>
                            <div class="testimonial-image flex-1">
                              <img src="image/<?= $testimonial['image'];?>" class="img-responsive"/>
                          </div>
                        <?php } ?>

                            <div class="testimonial-text flex-2">
                                <div class="description">
                                    <?= $testimonial['description'];?>
                                </div>
                                <div class="testimonial-name flex-2">
                                    <?= $testimonial['author'];?>
                                </div>
                            </div>
                      
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            <?php } ?>

          <?php } else { ?>
            <div class="flex flex-vcenter flex-hcenter">
              No Gallery Found
            </div>
          <?php } ?>

        </div>

    </div>
    <?php echo $column_right; ?>
  
  
  </div>
</div>
<?php echo $footer; ?> 