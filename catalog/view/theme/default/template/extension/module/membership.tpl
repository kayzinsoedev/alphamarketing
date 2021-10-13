<div class="container" style="padding-bottom: 50px;">
  <div class="col-md-12">
      <h3 class="text-center">
        <?php echo $title1; ?>
      </h3>
    <?php /*echo html($description1);*/?>
  </div>
  <div class="works-div text-center centered">
    <?php foreach ($membership_items as $mem_item) { ?>
      <div class="col-md-3 col-sm-4 col-xs-10 membership_items">
        <div class="item">
          <img src="<?php echo "image/".$mem_item['upload']; ?>" class="img-responsive"/>
          <h4 class="item_title"><?php echo $mem_item['title']; ?></h4>
          <div class="mem-desc"><?php echo $mem_item['description']?></div>
        </div>
      </div>
    <?php } ?>
  </div>
</div>

<div class="container" style="padding-bottom: 50px;">
  <div class="col-md-12">
    <h3 class="text-center">
      <?php echo $title2; ?>
    </h3>
    <?php /*echo html($description2);*/?>
  </div>
  <div class="row centered benefit">
    <?php foreach ($membership_benefit as $benefit) { ?>
      <div class="col-md-3 col-sm-4 col-xs-10 membership_items">
        <div class="item">
          <img src="<?php echo "image/".$benefit['upload']; ?>" class="img-responsive"/>
          <h4 class="item_title"><?php echo $benefit['title']; ?></h4>
          <div class="mem-desc"><?php echo $benefit['description']?></div>

        </div>
      </div>
    <?php } ?>
  </div>
  <hr />
</div>

<style>
.item_title{
font-weight: bold !important;
color: #006039 !important;
margin-top: 20px !important;
}
</style>
