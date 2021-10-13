<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      
      <?php if($text_order_numrber_is){ ?>
          <ul class="checkout_step mgb_50">
              <li class="first_step active">1 of 3 Account & Billing Details</li>
              <li class="second_step active">2 of 3 Order Review and Payment</li>
              <li class="third_step active">3 of 3 Order Success</li>
          </ul>
      <?php } ?>
      <div class='checkout-success text-center'>
        <div class="line-1">
            <?= $text_order_numrber_is; ?>
        </div>
        <div class="line-2">
            <?= $text_you_will_receive_an_email_confirmation_shortly_at; ?>
        </div>
        <div class="line-3">
            <a href="<?= $print_receipt_url; ?>" target="_blank" ><?= $print_receipt; ?></a>
        </div>
        <div class="line-4">
            <a href="<?php echo $continue; ?>" class="btn btn-primary margin-auto"><?php echo $button_to_home; ?></a>
        </div>
      </div>
    
      <?php //echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<!-- FACEBOOK EVENT - PURCHASE -->
<?php if($latest_order > 0){ ?>
  <?php if (isset($pixel_tracking) ) { ?>
    <?= $pixel_tracking?>
  <?php } ?>
<?php } ?>
<!-- FACEBOOK EVENT - PURCHASE END -->
<?php echo $footer; ?>