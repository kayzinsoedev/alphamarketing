<?php echo $header; ?>
<div>
    <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
</div>
<div class="container">
  <?php echo $content_top; ?>
  
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <h2><?php echo $heading_title; ?></h2>
      <?php echo $description; ?>

      <?php if(isset($information_repeater_info) && $information_repeater_info ) {?>
        <div class="repeater-row-content">
          <?php foreach($information_repeater_info as $info_row) {?>
            <div class="information-row <?= $info_row['row_type']?> <?=$info_row['image_direction'];?>">
                <?php if(isset($info_row['image']) && $info_row['image']) { ?> 
                  <div class="image information-col">
                    <img class="img-responsive" src="image/<?=$info_row['image'];?>" />
                  </div>
                <?php } ?>
                <div class="text information-col">
                  <?=html($info_row['description']);?>
                </div>
            </div>
          <?php } ?>
        </div>  
      <?php } ?>
      <?php if(!empty($informationlinks)) { ?>
        <?php foreach($informationlinks as $formlink) { ?>
            <div id="informationform<?php echo $formlink['form_id'];?>">
              <?php if (($logged && $formlink['display_type'] == 'onlycustomer') || (!$logged &&  $formlink['display_type'] == 'onlyguest') || ($formlink['display_type'] == 'all')) { ?>
              <script>

            url = 'index.php?route=tmdform/form&form_id=<?php echo $formlink['form_id'];?>&iframe=true';
            
            $('#informationform<?php echo $formlink['form_id'];?>').load(url);

          </script>
          <?php } ?>

            </div>
          <?php } ?>
     <?php } ?>

    </div>
      <?php echo $column_right; ?>
    </div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
<style>
.iid-4 div#content > h2 {
    display: none;
}
</style>