<?= $header; ?><?= $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" id="button-save" form="form-setting" data-toggle="tooltip" title="<?= $button_save; ?>" disabled="disabled" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?= $cancel; ?>" data-toggle="tooltip" title="<?= $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?= $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?= $breadcrumb['href']; ?>"><?= $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?= $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?= $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?= $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?= $action; ?>" method="post" enctype="multipart/form-data" id="form-setting" class="form-horizontal" autocomplete="off">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-general" data-toggle="tab"><?= $tab_general; ?></a></li>
            <li><a href="#tab-store" data-toggle="tab"><?= $tab_store; ?></a></li>
            <li class="<?= $hide; ?>"><a href="#tab-theme" data-toggle="tab">Theme</a></li>
            <li class="<?= $hide; ?>"><a href="#tab-fonts" data-toggle="tab">Fonts</a></li>
            <li class="<?= $hide; ?>"><a href="#tab-buttons" data-toggle="tab">Buttons</a></li>
            <li><a href="#tab-local" data-toggle="tab"><?= $tab_localization; ?></a></li>
            <li><a href="#tab-option" data-toggle="tab"><?= $tab_option; ?></a></li>
            <li><a href="#tab-image" data-toggle="tab"><?= $tab_image; ?></a></li>
            <li class="hidden" ><a href="#tab-ftp" data-toggle="tab"><?= $tab_ftp; ?></a></li>
            <li><a href="#tab-mail" data-toggle="tab"><?= $tab_mail; ?></a></li>
            <li><a href="#tab-server" data-toggle="tab" class="<?=$is_dev?>"><?= $tab_server; ?></a></li>
            <li><a href="#tab-social" data-toggle="tab">Social Media Link</a></li>
          </ul>
          <div class="tab-content">

            <div class="tab-pane <?= $hide; ?>" id="tab-buttons">
              <fieldset>
                <legend>Button Settings</legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-primary_button_background_color">Primary Button Background Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_primary_button_background_color" value="<?= $config_primary_button_background_color; ?>" id="input-primary_button_background_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-primary_button_text_color">Primary Button Text Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_primary_button_text_color" value="<?= $config_primary_button_text_color; ?>" id="input-primary_button_text_color" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-secondary_button_background_color">Secondary Button Background Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_secondary_button_background_color" value="<?= $config_secondary_button_background_color; ?>" id="input-secondary_button_background_color" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-secondary_button_text_color">Secondary Button Text Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_secondary_button_text_color" value="<?= $config_secondary_button_text_color; ?>" id="input-secondary_button_text_color" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-primary_button_border_color">Primary Button Border Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_primary_button_border_color" value="<?= $config_primary_button_border_color; ?>" id="input-primary_button_border_color" class="form-control" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-secondary_button_border_color">Secondary Button Border Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_secondary_button_border_color" value="<?= $config_secondary_button_border_color; ?>" id="input-secondary_button_border_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-button_border_width">Button Border Width(px)</label>
                  <div class="col-sm-10">
                    <input type="text" name="config_button_border_width" value="<?= $config_button_border_width; ?>" id="input-button_border_width" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-button_border_radius">Button Border Radius(px)</label>
                  <div class="col-sm-10">
                    <input type="text" name="config_button_border_radius" value="<?= $config_button_border_radius; ?>" id="input-button_border_radius" class="form-control" />
                  </div>
                </div>
              </fieldset>
            </div>
            
            <div class="tab-pane <?= $hide; ?>" id="tab-theme">
              <fieldset>
                <legend>Theme Settings</legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-background_image"><?= "Background Image"; ?></label>
                  <div class="col-sm-10"><a href="" id="thumb-background_image" data-toggle="image" class="img-thumbnail"><img src="<?= $background_image; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                    <input type="hidden" name="config_background_image" value="<?= $config_background_image; ?>" id="input-background_image" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="config_background_style" class="col-sm-2 control-label required">Background Style</label>
                  <div class="col-sm-10">
                      <textarea class="form-control" id="config_background_style" name="config_background_style"><?php echo $config_background_style;?></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-primary_color">Primary Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_primary_color" value="<?= $config_primary_color; ?>" id="input-primary_color" class="form-control" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-backend_primary_color">Backend Theme Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_backend_primary_color" value="<?= $config_backend_primary_color; ?>" id="input-backend_primary_color" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-secondary_color">Secondary Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_secondary_color" value="<?= $config_secondary_color; ?>" id="input-secondary_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-config-icon-color">Icon Color</label>
                  <div class="col-sm-10">
                    <select name="config_icon_color" id="input-config-icon-color" class="form-control">
                      <option value="0" <?=$config_icon_color==0?'selected="selected"':''?>>Dark</option>
                      <option value="1" <?=$config_icon_color==1?'selected="selected"':''?>>Light</option>
                    </select>
                  </div>
                </div>


                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-section_padding">Section Padding / Gap(px)</label>
                  <div class="col-sm-10">
                    <input type="text" name="config_section_padding" value="<?= $config_section_padding; ?>" id="input_section_padding" class="form-control" />
                  </div>
                </div>
              </fieldset>
              <fieldset>
                  <legend>Announcement Bar</legend>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-announcement_bar_status">Status</label>
                    <div class="col-sm-10">
                      <select name="config_announcement_bar_status" id="input-announcement_bar_status" class="form-control">
                        <?php if ($config_announcement_bar_status) { ?>
                          <option value="0">Disabled</option>
                          <option value="1" selected="selected">Enabled</option>
                        <?php } else { ?>
                          <option value="0" selected="selected">Disabled</option>
                          <option value="1">Enabled</option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-announcement_bar_background_color">Background Color</label>
                    <div class="col-sm-10">     <input type="text" name="config_announcement_bar_background_color" value="<?= $config_announcement_bar_background_color; ?>" id="input-announcement_bar_background_color" class="form-control" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-announcement_bar_title">Title</label>
                    <div class="col-sm-10">     <input type="text" name="config_announcement_bar_title" value="<?= $config_announcement_bar_title; ?>" id="input-announcement_bar_title" class="form-control" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-announcement_bar_text_color">Title color</label>
                    <div class="col-sm-10">     <input type="text" name="config_announcement_bar_text_color" value="<?= $config_announcement_bar_text_color; ?>" id="input-announcement_bar_text_color" class="form-control" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-announcement_bar_position">Title position</label>
                    <div class="col-sm-10">     
                      <select name="config_announcement_bar_position" class="form-control"> 
                        <?php foreach ($announcement_bar_position as $label => $position) { ?>
                            <?php if ( $position == $config_announcement_bar_position) { ?>
                            <option value="<?= $position; ?>" selected="selected"><?= $label; ?></option>
                            <?php } else { ?>
                            <option value="<?= $position; ?>"><?= $label; ?></option>
                            <?php } ?>
                          <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-announcement_bar_padding">Padding</label>
                    <div class="col-sm-10">     <input type="text" name="config_announcement_bar_padding" value="<?= $config_announcement_bar_padding; ?>" id="input-announcement_bar_padding" class="form-control" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-announcement_bar_running">Sliding Text</label>
                    <div class="col-sm-10">     
                      <select name="config_announcement_bar_running" class="form-control"> 
                        <option value="">- Sliding Text -</option> 
                        <option value="0" selected="">Disable</option> 
                        <option value="1">Enable</option> 
                        <option value="2">Mobile Only</option> 
                      </select>
                    </div>
                  </div>
              </fieldset>
              <fieldset>
                <legend>Main Banner Global Settings</legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-parallax_slider">Parrallax Slider</label>
                  <div class="col-sm-10">
                    <select name="config_parallax_slider" id="input-parallax_slider" class="form-control">
                     
                      <?php if ($config_parallax_slider) { ?>
                        <option value="0">Disabled</option>
                        <option value="1" selected="selected">Enabled</option>
                      <?php } else { ?>
                        <option value="0" selected="selected">Disabled</option>
                        <option value="1">Enabled</option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset class="">
                <legend><?= $entry_header_settings; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-about_layout"><?= $entry_header_layout; ?></label>
                  <div class="col-sm-10">
                    <select name="config_header_layout" id="input-about_layout" class="form-control">
                      <?php foreach ($header_layouts as $layout) { ?>
                      <?php if ($layout['layout_id'] == $config_header_layout) { ?>
                      <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-about_layout">Header Menu Letter Case</label>
                  <div class="col-sm-10">
                    <select name="config_header_letter_case" id="input-about_layout" class="form-control">
                      <?php foreach ($letter_case as $case) { ?>
                      <?php if ($case['id'] == $config_header_letter_case) { ?>
                      <option value="<?= $case['id']; ?>" selected="selected"><?= $case['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $case['id']; ?>"><?= $case['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-display_header_search_icon">Display Search Icon</label>
                  <div class="col-sm-10">
                    <select name="config_display_header_search_icon" id="input-display_header_search_icon" class="form-control">
                      <?php foreach ($header_search_type as $index => $type) { ?>
                        <?php if ( $index == $config_display_header_search_icon) { ?>
                        <option value="<?=  $index; ?>" selected="selected"><?= $type; ?></option>
                        <?php } else { ?>
                        <option value="<?=  $index; ?>"><?= $type; ?></option>
                        <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-display_cart_icon">Display Cart Icon</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_display_cart_icon) { ?>
                      <input type="radio" name="config_display_cart_icon" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_cart_icon" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>

                    <label class="radio-inline">
                      <?php if (!$config_display_cart_icon) { ?>
                      <input type="radio" name="config_display_cart_icon" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_cart_icon" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-display_enquiry_cart_icon">Display Enquiry Cart Icon</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_display_enquiry_cart_icon) { ?>
                      <input type="radio" name="config_display_enquiry_cart_icon" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_enquiry_cart_icon" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>

                    <label class="radio-inline">
                      <?php if (!$config_display_enquiry_cart_icon) { ?>
                      <input type="radio" name="config_display_enquiry_cart_icon" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_enquiry_cart_icon" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-display_wishlist_icon">Display Wishlist Icon</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_display_wishlist_icon) { ?>
                      <input type="radio" name="config_display_wishlist_icon" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_wishlist_icon" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>

                    <label class="radio-inline">
                      <?php if (!$config_display_wishlist_icon) { ?>
                      <input type="radio" name="config_display_wishlist_icon" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_wishlist_icon" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-display_account_icon">Display Account Icon</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_display_account_icon) { ?>
                      <input type="radio" name="config_display_account_icon" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_account_icon" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>

                    <label class="radio-inline">
                      <?php if (!$config_display_account_icon) { ?>
                      <input type="radio" name="config_display_account_icon" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_account_icon" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                
                <br/>
              </fieldset>
              <fieldset>
                <legend>Footer Settings</legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-footer_background_color">Footer Background Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_footer_background_color" value="<?= $config_footer_background_color; ?>" id="input-footer_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-footer_text_color">Footer Text Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_footer_text_color" value="<?= $config_footer_text_color; ?>" id="input-footer_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-footer_link_color">Footer Link Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_footer_link_color" value="<?= $config_footer_link_color; ?>" id="input-footer_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-footer_link_hover_color">Footer Link Hover Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_footer_link_hover_color" value="<?= $config_footer_link_hover_color; ?>" id="input-footer_link_hover_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label for="text_footer_heading_color" class="col-sm-2 control-label required">Footer Heading Color</label>
                  <div class="col-sm-4">
                      <input type="color" class="form-control" id="text_footer_heading_color" name="text_config[text_footer_heading_color]"
                          value="<?php echo $text_footer_heading_color;?>">
                  </div>
                
                  <label for="text_footer_heading_size" class="col-sm-2 control-label required">Font Size</label>
                  <div class="col-sm-4">
                      <input type="number" class="form-control" id="text_footer_heading_size" name="text_config[text_footer_heading_size]"
                          value="<?php echo $text_footer_heading_size;?>">
                  </div>
              </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-footer_bottom_background_color">Footer Bottom Background Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_footer_bottom_background_color" value="<?= $config_footer_bottom_background_color; ?>" id="input-footer_bottom_background_color" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-footer_bottom_text_color">Footer Bottom Text Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_footer_bottom_text_color" value="<?= $config_footer_bottom_text_color; ?>" id="input-footer_bottom_text_color" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-footer_bottom_link_color">Footer Bottom link Color</label>
                  <div class="col-sm-10">
                    <input type="color" name="config_footer_bottom_link_color" value="<?= $config_footer_bottom_link_color; ?>" id="input-footer_bottom_link_color" class="form-control" />
                  </div>
                </div>
              </fieldset>
              <fieldset class="hide">
                  <legend><?= $entry_about_us_settings ; ?></legend>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-about_layout"><?= $entry_about_us_layout ; ?></label>
                    <div class="col-sm-10">
                      <select name="config_about_us_layout" id="input-about_layout" class="form-control">
                        <?php foreach ($about_us_layouts as $layout) { ?>
                        <?php if ($layout['information_id'] == $config_contact_us_layout) { ?>
                        <option value="<?= $layout['information_id']; ?>" selected="selected"><?= $layout['title']; ?></option>
                        <?php } else { ?>
                        <option value="<?= $layout['information_id']; ?>"><?= $layout['title']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <br/>
              </fieldset>
              <fieldset>
                <legend>Service Settings</legend>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-service_main_title">Service Default Title</label>
                  <div class="col-sm-10">
                    <input type="text" name="config_service_main_title" value="<?= $config_service_main_title; ?>" placeholder="Service Main Title" id="input-service_main_title" class="form-control" />
                  </div>
                </div>


                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-service_limit">Service Per Page</label>
                  <div class="col-sm-10">
                    <input type="text" name="config_service_limit" value="<?= $config_service_limit ?  $config_service_limit : 6 ?>" placeholder="Featured Service Number" id="input-service_limit" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-service_listing_layout">Service Listing Layout</label>
                  <div class="col-sm-10">
                    <select name="config_service_listing_layout" id="input-service_listing_layout" class="form-control">
                      <?php foreach ($service_listing_layouts as $layout) { ?>
                      <?php if ($layout['layout_id'] == $config_service_listing_layout) { ?>
                      <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-service_inner_layout">Service Inner Layout</label>
                  <div class="col-sm-10">
                    <select name="config_service_inner_layout" id="input-service_inner_layout" class="form-control">
                      <?php foreach ($service_inner_layouts as $layout) { ?>
                      <?php if ($layout['layout_id'] == $config_service_inner_layout) { ?>
                      <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                  <legend>Article Settings</legend>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-article_main_title">Article Default Title</label>
                    <div class="col-sm-10">
                      <input type="text" name="config_article_main_title" value="<?= $config_article_main_title; ?>" placeholder="Article Main Title" id="input-article_main_title" class="form-control" />
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-featured_article_limit">Featured Article Number</label>
                    <div class="col-sm-10">
                      <input type="text" name="config_featured_article_limit" value="<?= $config_featured_article_limit; ?>" placeholder="Featured Article Number" id="input-featured_article_limit" class="form-control" />
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-article_listing_layout">Article Listing Layout</label>
                    <div class="col-sm-10">
                      <select name="config_article_listing_layout" id="input-article_listing_layout" class="form-control">
                        <?php foreach ($article_listing_layouts as $layout) { ?>
                        <?php if ($layout['layout_id'] == $config_article_listing_layout) { ?>
                        <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-article_inner_layout">Article Inner Layout</label>
                    <div class="col-sm-10">
                      <select name="config_article_inner_layout" id="input-article_inner_layout" class="form-control">
                        <?php foreach ($article_inner_layouts as $layout) { ?>
                        <?php if ($layout['layout_id'] == $config_article_inner_layout) { ?>
                        <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
              </fieldset>
              <fieldset>
                  <legend><?= $entry_contact_settings ; ?></legend>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-contact_layout"><?= $entry_contact_layout ; ?></label>
                    <div class="col-sm-10">
                      <select name="config_contact_us_layout" id="input-contact_layout" class="form-control">
                        <?php foreach ($contact_us_layouts as $layout) { ?>
                        <?php if ($layout['layout_id'] == $config_contact_us_layout) { ?>
                        <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-contact_phone_icon">Contact Us Phone Icon</label>
                    <div class="col-sm-10">
                      <input type="text" name="icon[config_phone_icon_svg]" value="<?= $config_phone_icon_svg; ?>" id="input-contact_phone_icon" class="form-control" />
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-contact_email_icon">Contact Us Email Icon</label>
                    <div class="col-sm-10">
                      <input type="text" name="icon[config_email_icon_svg]" value="<?= $config_email_icon_svg; ?>" id="input-contact_email_icon" class="form-control" />
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-contact_address_icon">Contact Us Address Icon</label>
                    <div class="col-sm-10">
                      <input type="text" name="icon[config_address_icon2_svg]" value="<?= $config_address_icon_svg; ?>" id="input-contact_address_icon" class="form-control" />
                    </div>
                  </div>

                  <div class="form-group" id ="contact_right_image_setting">
                    <label class="col-sm-2 control-label" for="input-contact_right_image"><?= $entry_contact_right_image; ?></label>
                    <div class="col-sm-10"><a href="" id="thumb-contact_right_image" data-toggle="image" class="img-thumbnail"><img src="<?= $contact_right_image; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                      <input type="hidden" name="config_contact_right_image" value="<?= $config_contact_right_image; ?>" id="input-contact_right_image" />
                    </div>
                  </div>
              </fieldset>
              <fieldset>
                <legend>Brands Settings</legend>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-brand_listing_layout">Brands Listing Page Layout</label>
                  <div class="col-sm-10">
                    <select name="config_brand_listing_layout" id="input-brand_listing_layout" class="form-control">
                      <?php foreach ($brand_listing_layouts as $layout) { ?>
                      <?php if ($layout['layout_id'] == $config_brand_listing_layout) { ?>
                      <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>

            </fieldset>

          <fieldset>
              <legend>Store Location Settings</legend>

              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-store_location_layout">Store Location Layout</label>
                <div class="col-sm-10">
                  <select name="config_store_location_layout" id="input-store_location_layout" class="form-control">
                    <?php foreach ($store_location_layouts as $layout) { ?>
                    <?php if ($layout['layout_id'] == $config_store_location_layout) { ?>
                    <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>

          </fieldset>

          <fieldset>
            <legend>Gallery Settings</legend>

            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-gallery_layout">Gallery Layout</label>
              <div class="col-sm-10">
                <select name="config_gallery_layout" id="input-gallery_layout" class="form-control">
                  <?php foreach ($gallery_layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $config_gallery_layout) { ?>
                  <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>

        </fieldset>
          <fieldset>
            <legend>Testimonial Settings</legend>

            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-testimonial_layout">Testimonial Layout</label>
              <div class="col-sm-10">
                <select name="config_testimonial_layout" id="input-testimonial_layout" class="form-control">
                  <?php foreach ($testimonial_layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $config_testimonial_layout) { ?>
                  <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>

        </fieldset>

            </div>
            <div class="tab-pane <?= $hide; ?>" id="tab-fonts">
              <fieldset>
                <legend>Heading Font Setting</legend>

                
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-h2_header_image"><?= "Main Heading image"; ?></label>
                  <div class="col-sm-10"><a href="" id="thumb-h2_header_image" data-toggle="image" class="img-thumbnail"><img src="<?= $h2_image; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                    <input type="hidden" name="config_h2_header_image" value="<?= $config_h2_header_image; ?>" id="input-h2_header_image" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="config_header_style" class="col-sm-2 control-label required">Main Heading style(CSS)</label>
                  <div class="col-sm-10">
                      <textarea class="form-control" id="config_header_style" name="config_header_style"><?php echo $config_header_style;?></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-about_layout">Main Heading Letter Case</label>
                  <div class="col-sm-10">
                    <select name="config_h2_letter_case" id="input-about_layout" class="form-control">
                      <?php foreach ($letter_case as $case) { ?>
                      <?php if ($case['id'] == $config_h2_letter_case) { ?>
                      <option value="<?= $case['id']; ?>" selected="selected"><?= $case['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $case['id']; ?>"><?= $case['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-about_layout">Secondary Heading Letter Case</label>
                  <div class="col-sm-10">
                    <select name="config_h3_letter_case" id="input-about_layout" class="form-control">
                      <?php foreach ($letter_case as $case) { ?>
                      <?php if ($case['id'] == $config_h3_letter_case) { ?>
                      <option value="<?= $case['id']; ?>" selected="selected"><?= $case['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $case['id']; ?>"><?= $case['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                
              <div class="form-group">
                  <label for="text_h2_color" class="col-sm-2 control-label required">Main Heading Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_h2_color" name="text_config[text_h2_color]"
                          value="<?php echo $text_h2_color;?>">
                  </div>
                  <label for="text_h2_font" class="col-sm-2 control-label required">Main Heading Font</label>
                  <div class="col-sm-2">
                      <select name="text_config[text_h2_font]" class="form-control" id="text_h2_font">
                        <?php foreach ($fonts as $font) { 
                          $id = $font['font_code'];
                          $code = $font['font_title'];
                        ?>
                        <option value="<?=$id?>" <?=$text_h2_font == $id?'selected="selected"':''?>><?=$code?></option>
                        <?php } ?>
                      </select>
                  </div>
                  <label for="text_h2_size" class="col-sm-2 control-label required">Main Heading Size</label>
                  <div class="col-sm-2">
                      <input type="number" class="form-control" id="text_h2_size" name="text_config[text_h2_size]"
                          value="<?php echo $text_h2_size;?>">
                  </div>
              </div>
            
            <div class="form-group">
                <label for="text_h3_color" class="col-sm-2 control-label required">Secondary Heading Color</label>
                <div class="col-sm-2">
                    <input type="color" class="form-control" id="text_h3_color" name="text_config[text_h3_color]"
                        value="<?php echo $text_h3_color;?>">
                </div>
                <label for="text_h3_font" class="col-sm-2 control-label required">Secondary Heading Font</label>
                <div class="col-sm-2">
                    <select name="text_config[text_h3_font]" class="form-control" id="text_h3_font">
                      <?php foreach ($fonts as $font) { 
                        $id = $font['font_code'];
                        $code = $font['font_title'];
                      ?>
                      <option value="<?=$id?>" <?=$text_h3_font == $id?'selected="selected"':''?>><?=$code?></option>
                      <?php } ?>
                    </select>
                </div>
                <label for="text_h3_size" class="col-sm-2 control-label required">Secondary Heading Font Size</label>
                <div class="col-sm-2">
                    <input type="number" class="form-control" id="text_h3_size" name="text_config[text_h3_size]"
                        value="<?php echo $text_h3_size;?>">
                </div>
            </div>

            <fieldset>
              <legend>Body Font Setting</legend>
              <div class="form-group">
                <label for="text_body_light_color" class="col-sm-2 control-label required">Body Font Color</label>
                <div class="col-sm-2">
                    <input type="color" class="form-control" id="text_body_color" name="text_config[text_body_color]"
                        value="<?php echo $text_body_color;?>">
                </div>
                <label for="text_body_font" class="col-sm-2 control-label required">Body Font</label>
                <div class="col-sm-2">
                    <select name="text_config[text_body_font]" class="form-control" id="text_body_font">
                      <?php foreach ($fonts as $font) { 
                        $id = $font['font_code'];
                        $code = $font['font_title'];
                      ?>
                      <option value="<?=$id?>" <?=$text_body_font == $id?'selected="selected"':''?>><?=$code?></option>
                      <?php } ?>
                    </select>
                </div>
                <label for="text_body_size" class="col-sm-2 control-label required">Body Font Size</label>
                <div class="col-sm-2">
                    <input type="number" class="form-control" id="text_body_size" name="text_config[text_body_size]"
                        value="<?php echo $text_body_size;?>">
                </div>
                </div>
        
                <div class="form-group">
                <label for="text_link_color" class="col-sm-2 control-label required">Link Color</label>
                <div class="col-sm-2">
                    <input type="color" class="form-control" id="text_link_color" name="text_config[text_link_color]"
                        value="<?php echo $text_link_color;?>">
                </div>
                <label for="text_link_font" class="col-sm-2 hide control-label required">Link Font</label>
                <div class="col-sm-2 hide">
                    <select name="text_config[text_link_font]" class="form-control" id="text_link_font">
                      <?php foreach ($fonts as $font) { 
                        $id = $font['font_code'];
                        $code = $font['font_title'];
                      ?>
                      <option value="<?=$id?>" <?=$text_link_font == $id?'selected="selected"':''?>><?=$code?></option>
                      <?php } ?>
                    </select>
                </div>
                <label for="text_link_size" class="col-sm-2 hide control-label required">Font Size</label>
                <div class="col-sm-2 hide">
                    <input type="number" class="form-control" id="text_link_size" name="text_config[text_link_size]"
                        value="<?php echo $text_link_size;?>">
                </div>
                </div>
        
                <div class="form-group">
                  <label for="text_link_hover_color" class="col-sm-2 control-label required">Link Hover Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_link_hover_color" name="text_config[text_link_hover_color]"
                          value="<?php echo $text_link_hover_color;?>">
                  </div>
                </div>
            </fieldset>

            <fieldset>
              <legend>Menu Font Setting</legend>
              <div class="form-group">
                  <label for="text_menu_color" class="col-sm-2 control-label required">Menu Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_menu_color" name="text_config[text_menu_color]"
                          value="<?php echo $text_menu_color;?>">
                  </div>
                  <label for="text_menu_font" class="col-sm-2 control-label required">Menu Font</label>
                  <div class="col-sm-2">
                      <select name="text_config[text_menu_font]" class="form-control" id="text_menu_font">
                        <?php foreach ($fonts as $font) { 
                          $id = $font['font_code'];
                          $code = $font['font_title'];
                        ?>
                        <option value="<?=$id?>" <?=$text_menu_font == $id?'selected="selected"':''?>><?=$code?></option>
                        <?php } ?>
                      </select>
                  </div>
                  <label for="text_menu_size" class="col-sm-2 control-label required">Font Size</label>
                  <div class="col-sm-2">
                      <input type="number" class="form-control" id="text_menu_size" name="text_config[text_menu_size]"
                          value="<?php echo $text_menu_size;?>">
                  </div>
              </div>
              
              <div class="form-group">
                  <label for="text_menu_hover_color" class="col-sm-2 control-label required">Menu Hover Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_menu_hover_color" name="text_config[text_menu_hover_color]"
                          value="<?php echo $text_menu_hover_color;?>">
                  </div>
                  <label for="text_menu_hover_font" class="hide col-sm-2 control-label required">Menu Hover Font</label>
                  <div class="col-sm-2 hide">
                      <select name="text_config[text_menu_hover_font]" class="form-control" id="text_menu_hover_font">
                        <?php foreach ($fonts as $font) { 
                          $id = $font['font_code'];
                          $code = $font['font_title'];
                        ?>
                        <option value="<?=$id?>" <?=$text_menu_hover_font == $id?'selected="selected"':''?>><?=$code?></option>
                        <?php } ?>
                      </select>
                  </div>
                  <label for="text_menu_hover_size" class="hide col-sm-2 control-label required">Font Size</label>
                  <div class="col-sm-2 hide">
                      <input type="number" class="form-control" id="text_menu_hover_size" name="text_config[text_menu_hover_size]"
                          value="<?php echo $text_menu_hover_size;?>">
                  </div>
              </div>
              <div class="form-group">
                <label for="text_submenu_hover_color" class="col-sm-2 control-label required">Submenu Hover Color</label>
                <div class="col-sm-2">
                    <input type="color" class="form-control" id="text_submenu_hover_color" name="text_config[text_submenu_hover_color]"
                        value="<?php echo $text_submenu_hover_color;?>">
                </div>
                <label for="text_submenu_hover_font" class="hide col-sm-2 control-label required">Submenu Hover Font</label>
                <div class="col-sm-2 hide">
                    <select name="text_config[text_submenu_hover_font]" class="form-control" id="text_submenu_hover_font">
                      <?php foreach ($fonts as $font) { 
                        $id = $font['font_code'];
                        $code = $font['font_title'];
                      ?>
                      <option value="<?=$id?>" <?=$text_submenu_hover_font == $id?'selected="selected"':''?>><?=$code?></option>
                      <?php } ?>
                    </select>
                </div>
                <label for="text_submenu_hover_size" class="hide col-sm-2 control-label required">Font Size</label>
                <div class="col-sm-2 hide">
                    <input type="number" class="form-control" id="text_submenu_hover_size" name="text_config[text_submenu_hover_size]"
                        value="<?php echo $text_submenu_hover_size;?>">
                </div>
              </div>
            </fieldset>
              

            <fieldset>
              <legend>Product Category Font Setting</legend>
              <div class="form-group">
                  <label for="text_category_menu_color" class="col-sm-2 control-label required">Category Font Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_category_menu_color" name="text_config[text_category_menu_color]"
                          value="<?php echo $text_category_menu_color;?>">
                  </div>
                  <label for="text_category_menu_font" class="col-sm-2 control-label required">Category Font</label>
                  <div class="col-sm-2">
                      <select name="text_config[text_category_menu_font]" class="form-control" id="text_category_menu_font">
                        <?php foreach ($fonts as $font) { 
                          $id = $font['font_code'];
                          $code = $font['font_title'];
                        ?>
                        <option value="<?=$id?>" <?=$text_category_menu_font == $id?'selected="selected"':''?>><?=$code?></option>
                        <?php } ?>
                      </select>
                  </div>
                  <label for="text_category_menu_size" class="col-sm-2 control-label required">Font Size</label>
                  <div class="col-sm-2">
                      <input type="number" class="form-control" id="text_category_menu_size" name="text_config[text_category_menu_size]"
                          value="<?php echo $text_category_menu_size;?>">
                  </div>
              </div>
                
              <div class="form-group">
                  <label for="text_category_menu_hover_color" class="col-sm-2 control-label required">Category Menu Hover
                      Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_category_menu_hover_color"
                          name="text_config[text_category_menu_hover_color]" value="<?php echo $text_category_menu_hover_color;?>">
                  </div>
                  <label for="text_category_menu_hover_font" class="hide col-sm-2 control-label required">Category Menu Hover
                      Font</label>
                  <div class="hide col-sm-2">
                      <select name="text_config[text_category_menu_hover_font]" class="form-control" id="text_category_menu_hover_font">
                        <?php foreach ($fonts as $font) { 
                          $id = $font['font_code'];
                          $code = $font['font_title'];
                        ?>
                        <option value="<?=$id?>" <?=$text_category_menu_hover_font == $id?'selected="selected"':''?>><?=$code?></option>
                        <?php } ?>
                      </select>
                  </div>
                  <label for="text_category_menu_hover_size" class="hide col-sm-2 control-label required">Font Size</label>
                  <div class="hide col-sm-2">
                      <input type="number" class="form-control" id="text_category_menu_hover_size"
                          name="text_config[text_category_menu_hover_size]" value="<?php echo $text_category_menu_hover_size;?>">
                  </div>
              </div>

              <div class="form-group hide">
                  <label for="text_p_light_color" class="col-sm-2 control-label required">Paragraph Light Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_p_light_color" name="text_config[text_p_light_color]"
                          value="<?php echo $text_p_light_color;?>">
                  </div>
                  <label for="text_p_light_font" class="col-sm-2 control-label required">Paragraph Light Font</label>
                  <div class="col-sm-2">
                      <select name="text_config[text_p_light_font]" class="form-control" id="text_p_light_font">
                        <?php foreach ($fonts as $font) { 
                          $id = $font['font_code'];
                          $code = $font['font_title'];
                        ?>
                        <option value="<?=$id?>" <?=$text_p_light_font == $id?'selected="selected"':''?>><?=$code?></option>
                        <?php } ?>
                      </select>
                  </div>
                  <label for="text_p_light_size" class="col-sm-2 control-label required">Font Size</label>
                  <div class="col-sm-2">
                      <input type="number" class="form-control" id="text_p_light_size" name="text_config[text_p_light_size]"
                          value="<?php echo $text_p_light_size;?>">
                  </div>
              </div>

              <div class="form-group hide">
                  <label for="text_p_theme_color" class="col-sm-2 control-label required">Paragraph Theme Color</label>
                  <div class="col-sm-2">
                      <input type="color" class="form-control" id="text_p_theme_color" name="text_config[text_p_theme_color]"
                          value="<?php echo $text_p_theme_color;?>">
                  </div>
                  <label for="text_p_theme_font" class="col-sm-2 control-label required">Paragraph Theme Font</label>
                  <div class="col-sm-2">
                      <select name="text_config[text_p_theme_font]" class="form-control" id="text_p_theme_font">
                        <?php foreach ($fonts as $font) { 
                          $id = $font['font_code'];
                          $code = $font['font_title'];
                        ?>
                        <option value="<?=$id?>" <?=$text_p_theme_font == $id?'selected="selected"':''?>><?=$code?></option>
                        <?php } ?>
                      </select>
                  </div>
                  <label for="text_p_theme_size" class="col-sm-2 control-label required">Font Size</label>
                  <div class="col-sm-2">
                      <input type="number" class="form-control" id="text_p_theme_size" name="text_config[text_p_theme_size]"
                          value="<?php echo $text_p_theme_size;?>">
                  </div>
              </div>
            </fieldset>
            </div>
              <div class="tab-pane" id="tab-social">
                  <fieldset>
                    <legend>Edit Social Media Link</legend>
                    <div class="">
                      <p class="hidden">Icon code can be obtain <a href="https://fontawesome.com/v4.7.0/icons/" target="_blank" ><u>here</u></a>, under <b></b>Brand Icons</b></p>

                      <table id="social-media" class="table table-striped table-bordered table-hover">
                        <thead>
                          <tr>
                            <td class="text-left">Title</td>
                            <td width="40px" class="text-left"><span title="Optional if Code Icon is available. If both is set, Icon will overwrite the code icon" data-toggle="tooltip">Icon</span></td>
						                <td class="text-left hidden"><span title="Optional if Icon is available" data-toggle="tooltip">Code Icon</span></td>
                            <td class="text-right">Link</td>
                            <td width="120px" class="text-right"><?= $entry_status; ?></td>
                            <td width="1px" ></td>
                          </tr>
                        </thead>
                        <tbody>
                          <?php $s=0; foreach($config_social as $each){ ?>
                            <tr>
                              <td>
                                <input class="form-control" type = "text" name = "config_social[<?= $s; ?>][title]" value = "<?= $each['title']; ?>" />
                              </td>
							  <td>
								<a href="" id="thumb-image_social<?= $s; ?>" data-toggle="image" class="img-thumbnail" style="width: 40px;" >
									<img src="<?= $each['thumb']; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" class="img-responsive"  />
								</a>
                                <input class="form-control" type = "hidden" name = "config_social[<?= $s; ?>][icon]" value = "<?= $each['icon']; ?>" id="input-image_social<?= $s; ?>" />
                              </td>
                              <td class="hidden">
                                <input class="form-control" type = "text" name = "config_social[<?= $s; ?>][code]" value = "<?= $each['code']; ?>" />
                              </td>
                              <td>
                                <input class="form-control" type = "text" name = "config_social[<?= $s; ?>][link]" value = "<?= $each['link']; ?>" />
                              </td>
                              <td>
                                <?php select("config_social[$s][status]","",$each['status'],$text_enabled,$text_disabled); ?>
                              </td>
                              <td>
                                <a class = "btn btn-danger" onclick = "$(this).parents('tr').remove();" >
                                  <i class="fa fa-minus-circle" aria-hidden="true"></i>
                                </a>
                              </td>
                            </tr>
                          <?php $s++;} ?>
                        </tbody>
                        <tfoot>
                          <tr>
                            <td colspan = "4" ></td>
                            <td>
                              <a class = "btn btn-primary" onclick = "addRow();" >
                                <i class="fa fa-plus-circle" aria-hidden="true"></i>
                              </a>
                            </td>
                          </tr>
                        </tfoot>
                      </table>
                      <script type="text/javascript">
                        var s = "<?= $s; ?>";
                        function addRow(){
                          var html = '<tr>'+
                          '<td>'+
                          '<input class="form-control" type = "text" name = "config_social['+s+'][title]" />'+
                          '</td>'+
                          '<td>'+ 
						  '<a href="" id="thumb-image_social'+s+'" data-toggle="image" class="img-thumbnail" style="width: 40px;" >'+
						  '<img src="<?= $placeholder; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" class="img-responsive"  />'+
						  '</a>'+
                          '<input class="form-control" type = "hidden" name = "config_social['+s+'][icon]" value = "" id="input-image_social'+s+'" />'+
                          '</td>'+
                          '<td class="hidden">'+
                          '<input class="form-control" type = "text" name = "config_social['+s+'][code]" />'+
                          '</td>'+
                          '<td>'+
                          '<input class="form-control" type = "text" name = "config_social['+s+'][link]" />'+
                          '</td>'+
                          '<td>'+
                          "<?php select("config_social[\"+s+\"][status]","",1,$text_enabled,$text_disabled); ?>"+
                          '</td>'+
                          '<td>'+
                          '<a class = "btn btn-danger" onclick = "$(this).parents(\'tr\').remove();" >'+
                          '<i class="fa fa-minus-circle" aria-hidden="true"></i>'+
                          '</a>'+
                          '</td>'+
                          '</tr>';
                          
                          $("#social-media > tbody").append(html);s++;
                        }
                      </script>
                    </div>
                  </fieldset>
                </div>
            <div class="tab-pane active" id="tab-general">

              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-meta-title"><?= $entry_meta_title; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_meta_title" value="<?= $config_meta_title; ?>" placeholder="<?= $entry_meta_title; ?>" id="input-meta-title" class="form-control" />
                  <?php if ($error_meta_title) { ?>
                  <div class="text-danger"><?= $error_meta_title; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-meta-description"><?= $entry_meta_description; ?></label>
                <div class="col-sm-10">
                  <textarea name="config_meta_description" rows="5" placeholder="<?= $entry_meta_description; ?>" id="input-meta-description" class="form-control"><?= $config_meta_description; ?></textarea>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-meta-keyword"><?= $entry_meta_keyword; ?></label>
                <div class="col-sm-10">
                  <textarea name="config_meta_keyword" rows="5" placeholder="<?= $entry_meta_keyword; ?>" id="input-meta-keyword" class="form-control"><?= $config_meta_keyword; ?></textarea>
                </div>
              </div>
              <div class="form-group <?=$is_dev?>">
                <label class="col-sm-2 control-label" for="input-addthis">Addthis / Sharethis code</label>
                <div class="col-sm-10">
                  <textarea name="config_addthis" rows="5" placeholder="Addthis / Sharethis code" id="input-addthis" class="form-control"><?= $config_addthis; ?></textarea>
                </div>
              </div>
              <div class="form-group <?=$is_dev?>">
                <label class="col-sm-2 control-label" for="input-livechat">Live / Support Chat Script</label>
                <div class="col-sm-10">
                  <textarea name="config_livechat" rows="5" placeholder="Live / Support Chat Script" id="input-livechat" class="form-control"><?= $config_livechat; ?></textarea>
                </div>
              </div>
              <div class="form-group <?=$is_dev?>">
                <label class="col-sm-2 control-label" for="input-schema">Schema.org (JSON+ID)</label>
                <div class="col-sm-10">
                  <textarea name="config_schema" rows="15" placeholder="Schema.org (JSON+ID)" id="input-schema" class="form-control"><?= $config_schema; ?></textarea>
                </div>
              </div>
              <div class="form-group hide">
                <label class="col-sm-2 control-label" for="input-theme"><?= $entry_theme; ?></label>
                <div class="col-sm-10">
                  <select name="config_theme" id="input-theme" class="form-control">
                    <?php foreach ($themes as $theme) { ?>
                    <?php if ($theme['value'] == $config_theme) { ?>
                    <option value="<?= $theme['value']; ?>" selected="selected"><?= $theme['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $theme['value']; ?>"><?= $theme['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                  <br />
                  <img src="" alt="" id="theme" class="img-thumbnail hidden" /></div>
              </div>
              <div class="form-group hide">
                <label class="col-sm-2 control-label" for="input-layout"><?= $entry_layout; ?></label>
                <div class="col-sm-10">
                  <select name="config_layout_id" id="input-layout" class="form-control">
                    <?php foreach ($layouts as $layout) { ?>
                    <?php if ($layout['layout_id'] == $config_layout_id) { ?>
                    <option value="<?= $layout['layout_id']; ?>" selected="selected"><?= $layout['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $layout['layout_id']; ?>"><?= $layout['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-account_image"><?= "Account Image"; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-account_image" data-toggle="image" class="img-thumbnail"><img src="<?= $account_image; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                  <input type="hidden" name="config_account_image" value="<?= $config_account_image; ?>" id="input-account_image" />
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-store">
   
			        <div class="form-group required <?=$is_dev?>">
                <label class="col-sm-2 control-label" for="input-api_key">Google Map API</label>
                <div class="col-sm-10">
                  <input type="text" name="config_google_api" value="<?= $config_google_api; ?>" placeholder="Google Map API" id="input-api_key" class="form-control" />
				          <?php if ($error_google_api) { ?>
                    <div class="text-danger"><?= $error_google_api; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-name"><?= $entry_name; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_name" value="<?= $config_name; ?>" placeholder="<?= $entry_name; ?>" id="input-name" class="form-control" />
                  <?php if ($error_name) { ?>
                  <div class="text-danger"><?= $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-owner"><?= $entry_owner; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_owner" value="<?= $config_owner; ?>" placeholder="<?= $entry_owner; ?>" id="input-owner" class="form-control" />
                  <?php if ($error_owner) { ?>
                  <div class="text-danger"><?= $error_owner; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-address"><?= $entry_address; ?></label>
                <div class="col-sm-10">
                  <textarea name="config_address" placeholder="<?= $entry_address; ?>" rows="5" id="input-address" class="form-control"><?= $config_address; ?></textarea>
                  <?php if ($error_address) { ?>
                  <div class="text-danger"><?= $error_address; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group <?=$is_dev?>">
                <label class="col-sm-2 control-label" for="input-geocode"><span data-toggle="tooltip" data-container="#tab-general" title="<?= $help_geocode; ?>"><?= $entry_geocode; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="config_geocode" value="<?= $config_geocode; ?>" placeholder="<?= $entry_geocode; ?>" id="input-geocode" class="form-control" />
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-email"><?= $entry_email; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_email" value="<?= $config_email; ?>" placeholder="<?= $entry_email; ?>" id="input-email" class="form-control" />
                  <?php if ($error_email) { ?>
                  <div class="text-danger"><?= $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-telephone"><?= $entry_telephone; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_telephone" value="<?= $config_telephone; ?>" placeholder="<?= $entry_telephone; ?>" id="input-telephone" class="form-control" />
                  <?php if ($error_telephone) { ?>
                  <div class="text-danger"><?= $error_telephone; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-whatsapp">Whatsapp Number with country code(e.g.65XXXXXXXX)</label>
                <div class="col-sm-10">
                  <input type="text" name="config_whatsapp" value="<?= $config_whatsapp; ?>" placeholder="Whatsapp Number" id="input-whatsapp" class="form-control" />
                </div>
              </div>
              <div class="form-group hidden">
                <label class="col-sm-2 control-label" for="input-image"><?= $entry_image; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?= $thumb; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                  <input type="hidden" name="config_image" value="<?= $config_image; ?>" id="input-image" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-open"><span data-toggle="tooltip" data-container="#tab-general" title="<?= $help_open; ?>"><?= $entry_open; ?></span></label>
                <div class="col-sm-10">
                  <textarea name="config_open" rows="5" placeholder="<?= $entry_open; ?>" id="input-open" class="form-control"><?= $config_open; ?></textarea>
                </div>
              </div>
              <div class="form-group <?=$is_dev?>">
                <label class="col-sm-2 control-label" for="input-comment"><span data-toggle="tooltip" data-container="#tab-general" title="<?= $help_comment; ?>"><?= $entry_comment; ?></span></label>
                <div class="col-sm-10">
                  <textarea name="config_comment" rows="5" placeholder="<?= $entry_comment; ?>" id="input-comment" class="form-control"><?= $config_comment; ?></textarea>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-gmap_iframe"><?= $entry_gmap_iframe; ?></label>
                <div class="col-sm-10">
                  <textarea name="config_gmap_iframe" rows="5" placeholder="<?= $entry_gmap_iframe; ?>" id="input-gmap_iframe" class="form-control"><?= $config_gmap_iframe; ?></textarea>
                </div>
              </div>
           
              <?php if ($locations) { ?>
              <div class="form-group">
                <label class="col-sm-2 control-label"><span data-toggle="tooltip" data-container="#tab-general" title="<?= $help_location; ?>"><?= $entry_location; ?></span></label>
                <div class="col-sm-10">
                  <?php foreach ($locations as $location) { ?>
                  <div class="checkbox">
                    <label>
                      <?php if (in_array($location['location_id'], $config_location)) { ?>
                      <input type="checkbox" name="config_location[]" value="<?= $location['location_id']; ?>" checked="checked" />
                      <?= $location['name']; ?>
                      <?php } else { ?>
                      <input type="checkbox" name="config_location[]" value="<?= $location['location_id']; ?>" />
                      <?= $location['name']; ?>
                      <?php } ?>
                    </label>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
            </div>
            <div class="tab-pane" id="tab-local">
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-country"><?= $entry_country; ?></label>
                <div class="col-sm-10">
                  <select name="config_country_id" id="input-country" class="form-control">
                    <?php foreach ($countries as $country) { ?>
                    <?php if ($country['country_id'] == $config_country_id) { ?>
                    <option value="<?= $country['country_id']; ?>" selected="selected"><?= $country['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $country['country_id']; ?>"><?= $country['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-zone"><?= $entry_zone; ?></label>
                <div class="col-sm-10">
                  <select name="config_zone_id" id="input-zone" class="form-control">
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-language"><?= $entry_language; ?></label>
                <div class="col-sm-10">
                  <select name="config_language" id="input-language" class="form-control">
                    <?php foreach ($languages as $language) { ?>
                    <?php if ($language['code'] == $config_language) { ?>
                    <option value="<?= $language['code']; ?>" selected="selected"><?= $language['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $language['code']; ?>"><?= $language['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-admin-language"><?= $entry_admin_language; ?></label>
                <div class="col-sm-10">
                  <select name="config_admin_language" id="input-admin-language" class="form-control">
                    <?php foreach ($languages as $language) { ?>
                    <?php if ($language['code'] == $config_admin_language) { ?>
                    <option value="<?= $language['code']; ?>" selected="selected"><?= $language['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $language['code']; ?>"><?= $language['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-currency"><span data-toggle="tooltip" title="<?= $help_currency; ?>"><?= $entry_currency; ?></span></label>
                <div class="col-sm-10">
                  <select name="config_currency" id="input-currency" class="form-control">
                    <?php foreach ($currencies as $currency) { ?>
                    <?php if ($currency['code'] == $config_currency) { ?>
                    <option value="<?= $currency['code']; ?>" selected="selected"><?= $currency['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $currency['code']; ?>"><?= $currency['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_currency_auto; ?>"><?= $entry_currency_auto; ?></span></label>
                <div class="col-sm-10">
                  <label class="radio-inline">
                    <?php if ($config_currency_auto) { ?>
                    <input type="radio" name="config_currency_auto" value="1" checked="checked" />
                    <?= $text_yes; ?>
                    <?php } else { ?>
                    <input type="radio" name="config_currency_auto" value="1" />
                    <?= $text_yes; ?>
                    <?php } ?>
                  </label>
                  <label class="radio-inline">
                    <?php if (!$config_currency_auto) { ?>
                    <input type="radio" name="config_currency_auto" value="0" checked="checked" />
                    <?= $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="config_currency_auto" value="0" />
                    <?= $text_no; ?>
                    <?php } ?>
                  </label>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-length-class"><?= $entry_length_class; ?></label>
                <div class="col-sm-10">
                  <select name="config_length_class_id" id="input-length-class" class="form-control">
                    <?php foreach ($length_classes as $length_class) { ?>
                    <?php if ($length_class['length_class_id'] == $config_length_class_id) { ?>
                    <option value="<?= $length_class['length_class_id']; ?>" selected="selected"><?= $length_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $length_class['length_class_id']; ?>"><?= $length_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-weight-class"><?= $entry_weight_class; ?></label>
                <div class="col-sm-10">
                  <select name="config_weight_class_id" id="input-weight-class" class="form-control">
                    <?php foreach ($weight_classes as $weight_class) { ?>
                    <?php if ($weight_class['weight_class_id'] == $config_weight_class_id) { ?>
                    <option value="<?= $weight_class['weight_class_id']; ?>" selected="selected"><?= $weight_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?= $weight_class['weight_class_id']; ?>"><?= $weight_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-option">
              <fieldset>
                <legend><?= $text_product; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_product_count; ?>"><?= $entry_product_count; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_product_count) { ?>
                      <input type="radio" name="config_product_count" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_product_count" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_product_count) { ?>
                      <input type="radio" name="config_product_count" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_product_count" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_product_decimal_places; ?>"><?= $entry_product_decimal_places; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_product_decimal_places) { ?>
                      <input type="radio" name="config_product_decimal_places" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_product_decimal_places" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_product_decimal_places) { ?>
                      <input type="radio" name="config_product_decimal_places" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_product_decimal_places" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_display_option_product_list; ?>"><?= $entry_display_option_product_list; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_display_option_product_list) { ?>
                      <input type="radio" name="config_display_option_product_list" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_option_product_list" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_display_option_product_list) { ?>
                      <input type="radio" name="config_display_option_product_list" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_display_option_product_list" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_dependent_option; ?>"><?= $entry_dependent_option; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_dependent_option) { ?>
                      <input type="radio" name="config_dependent_option" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_dependent_option" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_dependent_option) { ?>
                      <input type="radio" name="config_dependent_option" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_dependent_option" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_hover_image_change; ?>"><?= $entry_hover_image_change; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_hover_image_change) { ?>
                      <input type="radio" name="config_hover_image_change" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_hover_image_change" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_hover_image_change) { ?>
                      <input type="radio" name="config_hover_image_change" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_hover_image_change" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_product_next_previous; ?>"><?= $entry_product_next_previous; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_product_next_previous) { ?>
                      <input type="radio" name="config_product_next_previous" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_product_next_previous" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_product_next_previous) { ?>
                      <input type="radio" name="config_product_next_previous" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_product_next_previous" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-admin-limit"><span data-toggle="tooltip" title="<?= $help_limit_admin; ?>"><?= $entry_limit_admin; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_limit_admin" value="<?= $config_limit_admin; ?>" placeholder="<?= $entry_limit_admin; ?>" id="input-admin-limit" class="form-control" />
                    <?php if ($error_limit_admin) { ?>
                    <div class="text-danger"><?= $error_limit_admin; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_review; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_review; ?>"><?= $entry_review; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_review_status) { ?>
                      <input type="radio" name="config_review_status" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_review_status" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_review_status) { ?>
                      <input type="radio" name="config_review_status" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_review_status" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_review_after_purchase; ?>"><?= $entry_review_after_purchase; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_review_after_purchase) { ?>
                      <input type="radio" name="config_review_after_purchase" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_review_after_purchase" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_review_after_purchase) { ?>
                      <input type="radio" name="config_review_after_purchase" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_review_after_purchase" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_review_guest; ?>"><?= $entry_review_guest; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_review_guest) { ?>
                      <input type="radio" name="config_review_guest" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_review_guest" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_review_guest) { ?>
                      <input type="radio" name="config_review_guest" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_review_guest" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_voucher; ?></legend>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-voucher-min"><span data-toggle="tooltip" title="<?= $help_voucher_min; ?>"><?= $entry_voucher_min; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_voucher_min" value="<?= $config_voucher_min; ?>" placeholder="<?= $entry_voucher_min; ?>" id="input-voucher-min" class="form-control" />
                    <?php if ($error_voucher_min) { ?>
                    <div class="text-danger"><?= $error_voucher_min; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-voucher-max"><span data-toggle="tooltip" title="<?= $help_voucher_max; ?>"><?= $entry_voucher_max; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_voucher_max" value="<?= $config_voucher_max; ?>" placeholder="<?= $entry_voucher_max; ?>" id="input-voucher-max" class="form-control" />
                    <?php if ($error_voucher_max) { ?>
                    <div class="text-danger"><?= $error_voucher_max; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_tax; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?= $entry_tax; ?></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_tax) { ?>
                      <input type="radio" name="config_tax" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_tax" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_tax) { ?>
                      <input type="radio" name="config_tax" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_tax" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tax-default"><span data-toggle="tooltip" title="<?= $help_tax_default; ?>"><?= $entry_tax_default; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_tax_default" id="input-tax-default" class="form-control">
                      <option value=""><?= $text_none; ?></option>
                      <?php  if ($config_tax_default == 'shipping') { ?>
                      <option value="shipping" selected="selected"><?= $text_shipping; ?></option>
                      <?php } else { ?>
                      <option value="shipping"><?= $text_shipping; ?></option>
                      <?php } ?>
                      <?php  if ($config_tax_default == 'payment') { ?>
                      <option value="payment" selected="selected"><?= $text_payment; ?></option>
                      <?php } else { ?>
                      <option value="payment"><?= $text_payment; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-tax-customer"><span data-toggle="tooltip" title="<?= $help_tax_customer; ?>"><?= $entry_tax_customer; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_tax_customer" id="input-tax-customer" class="form-control">
                      <option value=""><?= $text_none; ?></option>
                      <?php  if ($config_tax_customer == 'shipping') { ?>
                      <option value="shipping" selected="selected"><?= $text_shipping; ?></option>
                      <?php } else { ?>
                      <option value="shipping"><?= $text_shipping; ?></option>
                      <?php } ?>
                      <?php  if ($config_tax_customer == 'payment') { ?>
                      <option value="payment" selected="selected"><?= $text_payment; ?></option>
                      <?php } else { ?>
                      <option value="payment"><?= $text_payment; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_account; ?></legend>
                <div class="form-group hidden">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_customer_online; ?>"><?= $entry_customer_online; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_customer_online) { ?>
                      <input type="radio" name="config_customer_online" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_online" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_customer_online) { ?>
                      <input type="radio" name="config_customer_online" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_online" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group hidden">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_customer_activity; ?>"><?= $entry_customer_activity; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_customer_activity) { ?>
                      <input type="radio" name="config_customer_activity" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_activity" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_customer_activity) { ?>
                      <input type="radio" name="config_customer_activity" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_activity" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group hidden">
                  <label class="col-sm-2 control-label"><?= $entry_customer_search; ?></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_customer_search) { ?>
                      <input type="radio" name="config_customer_search" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_search" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_customer_search) { ?>
                      <input type="radio" name="config_customer_search" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_search" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-customer-group"><span data-toggle="tooltip" title="<?= $help_customer_group; ?>"><?= $entry_customer_group; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_customer_group_id" id="input-customer-group" class="form-control">
                      <?php foreach ($customer_groups as $customer_group) { ?>
                      <?php if ($customer_group['customer_group_id'] == $config_customer_group_id) { ?>
                      <option value="<?= $customer_group['customer_group_id']; ?>" selected="selected"><?= $customer_group['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $customer_group['customer_group_id']; ?>"><?= $customer_group['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_customer_group_display; ?>"><?= $entry_customer_group_display; ?></span></label>
                  <div class="col-sm-10">
                    <?php foreach ($customer_groups as $customer_group) { ?>
                    <div class="checkbox">
                      <label>
                        <?php if (in_array($customer_group['customer_group_id'], $config_customer_group_display)) { ?>
                        <input type="checkbox" name="config_customer_group_display[]" value="<?= $customer_group['customer_group_id']; ?>" checked="checked" />
                        <?= $customer_group['name']; ?>
                        <?php } else { ?>
                        <input type="checkbox" name="config_customer_group_display[]" value="<?= $customer_group['customer_group_id']; ?>" />
                        <?= $customer_group['name']; ?>
                        <?php } ?>
                      </label>
                    </div>
                    <?php } ?>
                    <?php if ($error_customer_group_display) { ?>
                    <div class="text-danger"><?= $error_customer_group_display; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_customer_price; ?>"><?= $entry_customer_price; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_customer_price) { ?>
                      <input type="radio" name="config_customer_price" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_price" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_customer_price) { ?>
                      <input type="radio" name="config_customer_price" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_customer_price" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-login-attempts"><span data-toggle="tooltip" title="<?= $help_login_attempts; ?>"><?= $entry_login_attempts; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_login_attempts" value="<?= $config_login_attempts; ?>" placeholder="<?= $entry_login_attempts; ?>" id="input-login-attempts" class="form-control" />
                    <?php if ($error_login_attempts) { ?>
                    <div class="text-danger"><?= $error_login_attempts; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-account"><span data-toggle="tooltip" title="<?= $help_account; ?>"><?= $entry_account; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_account_id" id="input-account" class="form-control">
                      <option value="0"><?= $text_none; ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <?php if ($information['information_id'] == $config_account_id) { ?>
                      <option value="<?= $information['information_id']; ?>" selected="selected"><?= $information['title']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $information['information_id']; ?>"><?= $information['title']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_checkout; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-invoice-prefix"><span data-toggle="tooltip" title="<?= $help_invoice_prefix; ?>"><?= $entry_invoice_prefix; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_invoice_prefix" value="<?= $config_invoice_prefix; ?>" placeholder="<?= $entry_invoice_prefix; ?>" id="input-invoice-prefix" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_edit_cart; ?>"><?= $entry_edit_cart; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_edit_cart) { ?>
                      <input type="radio" name="config_edit_cart" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_edit_cart" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_edit_cart) { ?>
                      <input type="radio" name="config_edit_cart" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_edit_cart" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_cart_weight; ?>"><?= $entry_cart_weight; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_cart_weight) { ?>
                      <input type="radio" name="config_cart_weight" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_cart_weight" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_cart_weight) { ?>
                      <input type="radio" name="config_cart_weight" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_cart_weight" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_checkout_guest; ?>"><?= $entry_checkout_guest; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_checkout_guest) { ?>
                      <input type="radio" name="config_checkout_guest" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_checkout_guest" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_checkout_guest) { ?>
                      <input type="radio" name="config_checkout_guest" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_checkout_guest" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-checkout"><span data-toggle="tooltip" title="<?= $help_checkout; ?>"><?= $entry_checkout; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_checkout_id" id="input-checkout" class="form-control">
                      <option value="0"><?= $text_none; ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <?php if ($information['information_id'] == $config_checkout_id) { ?>
                      <option value="<?= $information['information_id']; ?>" selected="selected"><?= $information['title']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $information['information_id']; ?>"><?= $information['title']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-order-status"><span data-toggle="tooltip" title="<?= $help_order_status; ?>"><?= $entry_order_status; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_order_status_id" id="input-order-status" class="form-control">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <?php if ($order_status['order_status_id'] == $config_order_status_id) { ?>
                      <option value="<?= $order_status['order_status_id']; ?>" selected="selected"><?= $order_status['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $order_status['order_status_id']; ?>"><?= $order_status['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-process-status"><span data-toggle="tooltip" title="<?= $help_processing_status; ?>"><?= $entry_processing_status; ?></span></label>
                  <div class="col-sm-10">
                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($order_status['order_status_id'], $config_processing_status)) { ?>
                          <input type="checkbox" name="config_processing_status[]" value="<?= $order_status['order_status_id']; ?>" checked="checked" />
                          <?= $order_status['name']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="config_processing_status[]" value="<?= $order_status['order_status_id']; ?>" />
                          <?= $order_status['name']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                    <?php if ($error_processing_status) { ?>
                    <div class="text-danger"><?= $error_processing_status; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-complete-status"><span data-toggle="tooltip" title="<?= $help_complete_status; ?>"><?= $entry_complete_status; ?></span></label>
                  <div class="col-sm-10">
                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($order_status['order_status_id'], $config_complete_status)) { ?>
                          <input type="checkbox" name="config_complete_status[]" value="<?= $order_status['order_status_id']; ?>" checked="checked" />
                          <?= $order_status['name']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="config_complete_status[]" value="<?= $order_status['order_status_id']; ?>" />
                          <?= $order_status['name']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                    <?php if ($error_complete_status) { ?>
                    <div class="text-danger"><?= $error_complete_status; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-complete-status"><span data-toggle="tooltip" title="<?= $help_reward_status; ?>"><?= $entry_reward_status; ?></span></label>
                  <div class="col-sm-10">
                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($order_status['order_status_id'], $config_reward_status)) { ?>
                          <input type="checkbox" name="config_reward_status[]" value="<?= $order_status['order_status_id']; ?>" checked="checked" />
                          <?= $order_status['name']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="config_reward_status[]" value="<?= $order_status['order_status_id']; ?>" />
                          <?= $order_status['name']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                    <?php if ($error_reward_status) { ?>
                    <div class="text-danger"><?= $error_reward_status; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-cancel-status"><span data-toggle="tooltip" title="<?= $help_cancel_status; ?>"><?= $entry_cancel_status; ?></span></label>
                  <div class="col-sm-10">
                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($order_status['order_status_id'], $config_cancel_status)) { ?>
                          <input type="checkbox" name="config_cancel_status[]" value="<?= $order_status['order_status_id']; ?>" checked="checked" />
                          <?= $order_status['name']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="config_cancel_status[]" value="<?= $order_status['order_status_id']; ?>" />
                          <?= $order_status['name']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                    <?php if ($error_cancel_status) { ?>
                    <div class="text-danger"><?= $error_cancel_status; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <!-- for membership tier - start -->
                <div class="form-group <?= $loyalty_status ? 'required':'hidden' ?>">
                  <label class="col-sm-2 control-label" for="input-membership-status"><span data-toggle="tooltip" title="<?= $help_membership_status; ?>"><?= $entry_membership_status; ?></span></label>
                  <div class="col-sm-10">
                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($order_status['order_status_id'], $config_membership_status)) { ?>
                          <input type="checkbox" name="config_membership_status[]" value="<?= $order_status['order_status_id']; ?>" checked="checked" autocomplete="off"/>
                          <?= $order_status['name']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="config_membership_status[]" value="<?= $order_status['order_status_id']; ?>" autocomplete="off"/>
                          <?= $order_status['name']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                    <?php if ($error_membership_status) { ?>
                    <div class="text-danger"><?= $error_membership_status; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <!-- for membership tier - end -->
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-payment-received-status"><span data-toggle="tooltip" title="<?= $help_payment_received_status; ?>"><?= $entry_payment_received_status; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_payment_received_status" id="input-payment-received-status" class="form-control">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <?php if ($order_status['order_status_id'] == $config_payment_received_status) { ?>
                      <option value="<?= $order_status['order_status_id']; ?>" selected="selected"><?= $order_status['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $order_status['order_status_id']; ?>"><?= $order_status['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-fraud-status"><span data-toggle="tooltip" title="<?= $help_fraud_status; ?>"><?= $entry_fraud_status; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_fraud_status_id" id="input-fraud-status" class="form-control">
                      <?php foreach ($order_statuses as $order_status) { ?>
                      <?php if ($order_status['order_status_id'] == $config_fraud_status_id) { ?>
                      <option value="<?= $order_status['order_status_id']; ?>" selected="selected"><?= $order_status['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $order_status['order_status_id']; ?>"><?= $order_status['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-api"><span data-toggle="tooltip" title="<?= $help_api; ?>"><?= $entry_api; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_api_id" id="input-api" class="form-control">
                      <option value="0"><?= $text_none; ?></option>
                      <?php foreach ($apis as $api) { ?>
                      <?php if ($api['api_id'] == $config_api_id) { ?>
                      <option value="<?= $api['api_id']; ?>" selected="selected"><?= $api['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $api['api_id']; ?>"><?= $api['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_stock; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_stock_display; ?>"><?= $entry_stock_display; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_stock_display) { ?>
                      <input type="radio" name="config_stock_display" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_stock_display" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_stock_display) { ?>
                      <input type="radio" name="config_stock_display" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_stock_display" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_stock_warning; ?>"><?= $entry_stock_warning; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_stock_warning) { ?>
                      <input type="radio" name="config_stock_warning" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_stock_warning" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_stock_warning) { ?>
                      <input type="radio" name="config_stock_warning" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_stock_warning" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_stock_checkout; ?>"><?= $entry_stock_checkout; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_stock_checkout) { ?>
                      <input type="radio" name="config_stock_checkout" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_stock_checkout" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_stock_checkout) { ?>
                      <input type="radio" name="config_stock_checkout" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_stock_checkout" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-invoice-prefix"><span data-toggle="tooltip" title="<?= $help_low_stock_quantity; ?>"><?= $entry_low_stock_quantity; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_low_stock_quantity" value="<?= $config_low_stock_quantity; ?>" placeholder="<?= $entry_low_stock_quantity; ?>" id="input-invoice-prefix" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_low_stock_notify; ?>"><?= $entry_low_stock_notify; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_low_stock_notify) { ?>
                      <input type="radio" name="config_low_stock_notify" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_low_stock_notify" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_low_stock_notify) { ?>
                      <input type="radio" name="config_low_stock_notify" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_low_stock_notify" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>

                <div class="form-group cronstock" <?php if(!$config_low_stock_notify) { ?> style="display: none" <?php } ?>>
                  <label class="col-sm-2 control-label">CRON Command:</label>
                  <div class="col-sm-10">
                    <input type="text" value="<?=$low_stock_notify_command?>" id="input-invoice-prefix" class="form-control" readonly />
                  </div>
                </div>



              </fieldset>
              <fieldset class="hidden">
                <legend><?= $text_affiliate; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_affiliate_approval; ?>"><?= $entry_affiliate_approval; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_affiliate_approval) { ?>
                      <input type="radio" name="config_affiliate_approval" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_affiliate_approval" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_affiliate_approval) { ?>
                      <input type="radio" name="config_affiliate_approval" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_affiliate_approval" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_affiliate_auto; ?>"><?= $entry_affiliate_auto; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_stock_checkout) { ?>
                      <input type="radio" name="config_affiliate_auto" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_affiliate_auto" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_stock_checkout) { ?>
                      <input type="radio" name="config_affiliate_auto" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_affiliate_auto" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-affiliate-commission"><span data-toggle="tooltip" title="<?= $help_affiliate_commission; ?>"><?= $entry_affiliate_commission; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_affiliate_commission" value="<?= $config_affiliate_commission; ?>" placeholder="<?= $entry_affiliate_commission; ?>" id="input-affiliate-commission" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-affiliate"><span data-toggle="tooltip" title="<?= $help_affiliate; ?>"><?= $entry_affiliate; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_affiliate_id" id="input-affiliate" class="form-control">
                      <option value="0"><?= $text_none; ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <?php if ($information['information_id'] == $config_affiliate_id) { ?>
                      <option value="<?= $information['information_id']; ?>" selected="selected"><?= $information['title']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $information['information_id']; ?>"><?= $information['title']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset class="hidden">>
                <legend><?= $text_return; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-return"><span data-toggle="tooltip" title="<?= $help_return; ?>"><?= $entry_return; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_return_id" id="input-return" class="form-control">
                      <option value="0"><?= $text_none; ?></option>
                      <?php foreach ($informations as $information) { ?>
                      <?php if ($information['information_id'] == $config_return_id) { ?>
                      <option value="<?= $information['information_id']; ?>" selected="selected"><?= $information['title']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $information['information_id']; ?>"><?= $information['title']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-return-status"><span data-toggle="tooltip" title="<?= $help_return_status; ?>"><?= $entry_return_status; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_return_status_id" id="input-return-status" class="form-control">
                      <?php foreach ($return_statuses as $return_status) { ?>
                      <?php if ($return_status['return_status_id'] == $config_return_status_id) { ?>
                      <option value="<?= $return_status['return_status_id']; ?>" selected="selected"><?= $return_status['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $return_status['return_status_id']; ?>"><?= $return_status['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_captcha; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_captcha; ?>"><?= $entry_captcha; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_captcha" id="input-captcha" class="form-control">
                      <option value=""><?= $text_none; ?></option>
                      <?php foreach ($captchas as $captcha) { ?>
                      <?php if ($captcha['value'] == $config_captcha) { ?>
                      <option value="<?= $captcha['value']; ?>" selected="selected"><?= $captcha['text']; ?></option>
                      <?php } else { ?>
                      <option value="<?= $captcha['value']; ?>"><?= $captcha['text']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?= $entry_captcha_page; ?></label>
                  <div class="col-sm-10">
                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                      <?php foreach ($captcha_pages as $captcha_page) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($captcha_page['value'], $config_captcha_page)) { ?>
                          <input type="checkbox" name="config_captcha_page[]" value="<?= $captcha_page['value']; ?>" checked="checked" />
                          <?= $captcha_page['text']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="config_captcha_page[]" value="<?= $captcha_page['value']; ?>" />
                          <?= $captcha_page['text']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                  </div>
                </div>
              </fieldset>
            </div>
            <div class="tab-pane" id="tab-image">
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-logo"><?= $entry_logo; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-logo" data-toggle="image" class="img-thumbnail"><img src="<?= $logo; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                  <input type="hidden" name="config_logo" value="<?= $config_logo; ?>" id="input-logo" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-icon"><span data-toggle="tooltip" title="<?= $help_icon; ?>"><?= $entry_icon; ?></span></label>
                <div class="col-sm-10"><a href="" id="thumb-icon" data-toggle="image" class="img-thumbnail"><img src="<?= $icon; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                  <input type="hidden" name="config_icon" value="<?= $config_icon; ?>" id="input-icon" />
                </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-admin-logo">Admin <?= $entry_logo; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-admin-logo" data-toggle="image" class="img-thumbnail"><img src="<?= $admin_logo; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                  <input type="hidden" name="config_admin_logo" value="<?= $config_admin_logo; ?>" id="input-admin-logo" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-admin-icon"><span data-toggle="tooltip" title="<?= $help_icon; ?>">Admin <?= $entry_icon; ?></span></label>
                <div class="col-sm-10"><a href="" id="thumb-admin-icon" data-toggle="image" class="img-thumbnail"><img src="<?= $admin_icon; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                  <input type="hidden" name="config_admin_icon" value="<?= $config_admin_icon; ?>" id="input-admin-icon" />
                </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-no_image"><?= $entry_no_image; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-no_image" data-toggle="image" class="img-thumbnail"><img src="<?= $no_image; ?>" alt="" title="" data-placeholder="<?= $placeholder; ?>" /></a>
                  <input type="hidden" name="config_no_image" value="<?= $config_no_image; ?>" id="input-no_image" />
                </div>
              </div>

            </div>
            <div class="tab-pane" id="tab-ftp">
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-ftp-host"><?= $entry_ftp_hostname; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_ftp_hostname" value="<?= $config_ftp_hostname; ?>" placeholder="<?= $entry_ftp_hostname; ?>" id="input-ftp-host" class="form-control" />
                  <?php if ($error_ftp_hostname) { ?>
                  <div class="text-danger"><?= $error_ftp_hostname; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-ftp-port"><?= $entry_ftp_port; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_ftp_port" value="<?= $config_ftp_port; ?>" placeholder="<?= $entry_ftp_port; ?>" id="input-ftp-port" class="form-control" />
                  <?php if ($error_ftp_port) { ?>
                  <div class="text-danger"><?= $error_ftp_port; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-ftp-username"><?= $entry_ftp_username; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_ftp_username" value="<?= $config_ftp_username; ?>" placeholder="<?= $entry_ftp_username; ?>" id="input-ftp-username" class="form-control" />
                  <?php if ($error_ftp_username) { ?>
                  <div class="text-danger"><?= $error_ftp_username; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-ftp-password"><?= $entry_ftp_password; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="config_ftp_password" value="<?= $config_ftp_password; ?>" placeholder="<?= $entry_ftp_password; ?>" id="input-ftp-password" class="form-control" />
                  <?php if ($error_ftp_password) { ?>
                  <div class="text-danger"><?= $error_ftp_password; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-ftp-root"><span data-toggle="tooltip" data-html="true" title="<?= htmlspecialchars($help_ftp_root); ?>"><?= $entry_ftp_root; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="config_ftp_root" value="<?= $config_ftp_root; ?>" placeholder="<?= $entry_ftp_root; ?>" id="input-ftp-root" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label"><?= $entry_ftp_status; ?></label>
                <div class="col-sm-10">
                  <label class="radio-inline">
                    <?php if ($config_ftp_status) { ?>
                    <input type="radio" name="config_ftp_status" value="1" checked="checked" />
                    <?= $text_yes; ?>
                    <?php } else { ?>
                    <input type="radio" name="config_ftp_status" value="1" />
                    <?= $text_yes; ?>
                    <?php } ?>
                  </label>
                  <label class="radio-inline">
                    <?php if (!$config_ftp_status) { ?>
                    <input type="radio" name="config_ftp_status" value="0" checked="checked" />
                    <?= $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="config_ftp_status" value="0" />
                    <?= $text_no; ?>
                    <?php } ?>
                  </label>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-mail">
              <fieldset class="<?=$is_dev?>">
                <legend><?= $text_general; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-protocol"><span data-toggle="tooltip" title="<?= $help_mail_protocol; ?>"><?= $entry_mail_protocol; ?></span></label>
                  <div class="col-sm-10">
                    <select name="config_mail_protocol" id="input-mail-protocol" class="form-control">
                      <?php if ($config_mail_protocol == 'mail') { ?>
                      <option value="mail" selected="selected"><?= $text_mail; ?></option>
                      <?php } else { ?>
                      <option value="mail"><?= $text_mail; ?></option>
                      <?php } ?>
                      <?php if ($config_mail_protocol == 'smtp') { ?>
                      <option value="smtp" selected="selected"><?= $text_smtp; ?></option>
                      <?php } else { ?>
                      <option value="smtp"><?= $text_smtp; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-parameter"><span data-toggle="tooltip" title="<?= $help_mail_parameter; ?>"><?= $entry_mail_parameter; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_mail_parameter" value="<?= $config_mail_parameter; ?>" placeholder="<?= $entry_mail_parameter; ?>" id="input-mail-parameter" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-smtp-hostname"><span data-toggle="tooltip" title="<?= $help_mail_smtp_hostname; ?>"><?= $entry_mail_smtp_hostname; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_mail_smtp_hostname" value="<?= $config_mail_smtp_hostname; ?>" placeholder="<?= $entry_mail_smtp_hostname; ?>" id="input-mail-smtp-hostname" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-smtp-username"><?= $entry_mail_smtp_username; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_mail_smtp_username" value="<?= $config_mail_smtp_username; ?>" placeholder="<?= $entry_mail_smtp_username; ?>" id="input-mail-smtp-username" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-smtp-password"><span data-toggle="tooltip" title="<?= $help_mail_smtp_password; ?>"><?= $entry_mail_smtp_password; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_mail_smtp_password" value="<?= $config_mail_smtp_password; ?>" placeholder="<?= $entry_mail_smtp_password; ?>" id="input-mail-smtp-password" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-smtp-port"><?= $entry_mail_smtp_port; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_mail_smtp_port" value="<?= $config_mail_smtp_port; ?>" placeholder="<?= $entry_mail_smtp_port; ?>" id="input-mail-smtp-port" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-smtp-timeout"><?= $entry_mail_smtp_timeout; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_mail_smtp_timeout" value="<?= $config_mail_smtp_timeout; ?>" placeholder="<?= $entry_mail_smtp_timeout; ?>" id="input-mail-smtp-timeout" class="form-control" />
                  </div>
                </div>
              </fieldset>

                <fieldset>
                    <legend><?= $text_sendgrid; ?></legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_sendgrid_use; ?>"><?= $entry_mail_sendgrid_use; ?></span></label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <?php if ($config_sendgrid_use) { ?>
                                    <input type="radio" name="config_sendgrid_use" value="1" checked="checked" />
                                    <?= $text_yes; ?>
                                <?php } else { ?>
                                    <input type="radio" name="config_sendgrid_use" value="1" />
                                    <?= $text_yes; ?>
                                <?php } ?>
                            </label>
                            <label class="radio-inline">
                                <?php if (!$config_sendgrid_use) { ?>
                                    <input type="radio" name="config_sendgrid_use" value="0" checked="checked" />
                                    <?= $text_no; ?>
                                <?php } else { ?>
                                    <input type="radio" name="config_sendgrid_use" value="0" />
                                    <?= $text_no; ?>
                                <?php } ?>
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-mail-sendgrid-api-key"><span data-toggle="tooltip" title="<?= $help_sendgrid_api_key; ?>"><?= $entry_mail_sendgrid_api_key; ?></span></label>
                        <div class="col-sm-10">
                            <input type="text" name="config_sendgrid_api_key" value="<?= $config_sendgrid_api_key; ?>" placeholder="<?= $entry_mail_sendgrid_api_key; ?>" id="input-mail-sendgrid-api-key" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-mail-sendgrid-email"><span data-toggle="tooltip" title="<?= $help_sendgrid_mail; ?>"><?= $entry_mail_sendgrid_email; ?></span></label>
                        <div class="col-sm-10">
                            <input type="text" name="config_sendgrid_mail" value="<?= $config_sendgrid_mail; ?>" placeholder="<?= $entry_mail_sendgrid_email; ?>" id="input-mail-sendgrid-email" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-mail-sendgrid-name"><span data-toggle="tooltip" title="<?= $help_sendgrid_name; ?>"><?= $entry_mail_sendgrid_name; ?></span></label>
                        <div class="col-sm-10">
                            <input type="text" name="config_sendgrid_name" value="<?= $config_sendgrid_name; ?>" placeholder="<?= $entry_mail_sendgrid_name; ?>" id="input-mail-sendgrid-name" class="form-control" />
                        </div>
                    </div>
                </fieldset>

              <fieldset>
                <legend><?= $text_mail_alert; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_mail_alert; ?>"><?= $entry_mail_alert; ?></span></label>
                  <div class="col-sm-10">
                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                      <?php foreach ($mail_alerts as $mail_alert) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($mail_alert['value'], $config_mail_alert)) { ?>
                          <input type="checkbox" name="config_mail_alert[]" value="<?= $mail_alert['value']; ?>" checked="checked" />
                          <?= $mail_alert['text']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="config_mail_alert[]" value="<?= $mail_alert['value']; ?>" />
                          <?= $mail_alert['text']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-mail-alert-email"><span data-toggle="tooltip" title="<?= $help_mail_alert_email; ?>"><?= $entry_mail_alert_email; ?></span></label>
                  <div class="col-sm-10">
                    <textarea name="config_alert_email" rows="5" placeholder="<?= $entry_mail_alert_email; ?>" id="input-alert-email" class="form-control"><?= $config_alert_email; ?></textarea>
                  </div>
                </div>
              </fieldset>
            </div>
            <div class="tab-pane" id="tab-server">
              <fieldset>
                <legend><?= $text_general; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_maintenance; ?>"><?= $entry_maintenance; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_maintenance) { ?>
                      <input type="radio" name="config_maintenance" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_maintenance" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_maintenance) { ?>
                      <input type="radio" name="config_maintenance" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_maintenance" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_seo_url; ?>"><?= $entry_seo_url; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_seo_url) { ?>
                      <input type="radio" name="config_seo_url" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_seo_url" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_seo_url) { ?>
                      <input type="radio" name="config_seo_url" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_seo_url" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-robots"><span data-toggle="tooltip" title="<?= $help_robots; ?>"><?= $entry_robots; ?></span></label>
                  <div class="col-sm-10">
                    <textarea name="config_robots" rows="5" placeholder="<?= $entry_robots; ?>" id="input-robots" class="form-control"><?= $config_robots; ?></textarea>
                  </div>1
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-compression"><span data-toggle="tooltip" title="<?= $help_compression; ?>"><?= $entry_compression; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_compression" value="<?= $config_compression; ?>" placeholder="<?= $entry_compression; ?>" id="input-compression" class="form-control" />
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_security; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_secure; ?>"><?= $entry_secure; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_secure) { ?>
                      <input type="radio" name="config_secure" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_secure" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_secure) { ?>
                      <input type="radio" name="config_secure" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_secure" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_password; ?>"><?= $entry_password; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_password) { ?>
                      <input type="radio" name="config_password" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_password" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_password) { ?>
                      <input type="radio" name="config_password" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_password" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $help_shared; ?>"><?= $entry_shared; ?></span></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_shared) { ?>
                      <input type="radio" name="config_shared" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_shared" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_shared) { ?>
                      <input type="radio" name="config_shared" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_shared" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
								<label class="col-sm-2 control-label" for="input-timezone"><?php echo $entry_timezone; ?></label>
								<div class="col-sm-10">
									<select name="config_timezone" id="input-timezone" class="form-control">
										<?php foreach ($timezone_lists as $timezone) { ?>
											<?php if ($config_timezone == $timezone) { ?>
												<option value="<?php echo $timezone; ?>" selected="selected"><?php echo $timezone; ?></option>
												<?php } else { ?>
												<option value="<?php echo $timezone; ?>"><?php echo $timezone; ?></option>
											<?php } ?>
										<?php } ?>
									</select>
								</div>
							</div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-encryption"><span data-toggle="tooltip" title="<?= $help_encryption; ?>"><?= $entry_encryption; ?></span></label>
                  <div class="col-sm-10">
                    <textarea name="config_encryption" rows="5" placeholder="<?= $entry_encryption; ?>" id="input-encryption" class="form-control"><?= $config_encryption; ?></textarea>
                    <?php if ($error_encryption) { ?>
                    <div class="text-danger"><?= $error_encryption; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_upload; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-file-max-size"><span data-toggle="tooltip" title="<?= $help_file_max_size; ?>"><?= $entry_file_max_size; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_file_max_size" value="<?= $config_file_max_size; ?>" placeholder="<?= $entry_file_max_size; ?>" id="input-file-max-size" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-file-ext-allowed"><span data-toggle="tooltip" title="<?= $help_file_ext_allowed; ?>"><?= $entry_file_ext_allowed; ?></span></label>
                  <div class="col-sm-10">
                    <textarea name="config_file_ext_allowed" rows="5" placeholder="<?= $entry_file_ext_allowed; ?>" id="input-file-ext-allowed" class="form-control"><?= $config_file_ext_allowed; ?></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-file-mime-allowed"><span data-toggle="tooltip" title="<?= $help_file_mime_allowed; ?>"><?= $entry_file_mime_allowed; ?></span></label>
                  <div class="col-sm-10">
                    <textarea name="config_file_mime_allowed" rows="5" placeholder="<?= $entry_file_mime_allowed; ?>" id="input-file-mime-allowed" class="form-control"><?= $config_file_mime_allowed; ?></textarea>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?= $text_error; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?= $entry_error_display; ?></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_error_display) { ?>
                      <input type="radio" name="config_error_display" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_error_display" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_error_display) { ?>
                      <input type="radio" name="config_error_display" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_error_display" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label"><?= $entry_error_log; ?></label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <?php if ($config_error_log) { ?>
                      <input type="radio" name="config_error_log" value="1" checked="checked" />
                      <?= $text_yes; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_error_log" value="1" />
                      <?= $text_yes; ?>
                      <?php } ?>
                    </label>
                    <label class="radio-inline">
                      <?php if (!$config_error_log) { ?>
                      <input type="radio" name="config_error_log" value="0" checked="checked" />
                      <?= $text_no; ?>
                      <?php } else { ?>
                      <input type="radio" name="config_error_log" value="0" />
                      <?= $text_no; ?>
                      <?php } ?>
                    </label>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-error-filename"><?= $entry_error_filename; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="config_error_filename" value="<?= $config_error_filename; ?>" placeholder="<?= $entry_error_filename; ?>" id="input-error-filename" class="form-control" />
                    <?php if ($error_error_filename) { ?>
                    <div class="text-danger"><?= $error_error_filename; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </fieldset>

            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!--
  <script type="text/javascript"><!--
$('select[name=\'config_theme\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=setting/setting/theme&token=<?= $token; ?>&theme=' + this.value,
		dataType: 'html',
		beforeSend: function() {
			$('select[name=\'config_theme\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(html) {
			$('#theme').attr('src', html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'config_theme\']').trigger('change');
//--></script> 

  <script type="text/javascript"><!--



$('select[name=\'config_country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=localisation/country/country&token=<?= $token; ?>&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'config_country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			html = '<option value=""><?= $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
          			html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?= $config_zone_id; ?>') {
            			html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?= $text_none; ?></option>';
			}

			$('select[name=\'config_zone_id\']').html(html);
			
			$('#button-save').prop('disabled', false);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});
$('input[name="config_low_stock_notify"]').on('change',function(){
  if($(this).val() == 1) {
    $('.cronstock').css('display','block');
  } else {
    $('.cronstock').css('display','none');
  }
});

$('select[name=\'config_country_id\']').trigger('change');
//--></script></div>

<script>
  $('#contact_right_image_setting').hide();

  if($('#input-contact_layout').val()!= 'layout_2') {
    $('input[name="config_contact_right_image"]').val('');
  }else {
    $('#contact_right_image_setting').show();
  }

$('#input-contact_layout').on('change', function() {
    if($(this).val() == 'layout_2') {
      $('#contact_right_image_setting').show();
    }else {
      $('#contact_right_image_setting').hide();
      $('input[name="config_contact_right_image"]').val('');
    }
  
  });
</script>

<?= $footer; ?> 
