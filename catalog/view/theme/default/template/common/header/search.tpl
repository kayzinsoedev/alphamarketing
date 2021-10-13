<?php if($display_search) { ?>
  <?php if($popup_search) { ?>
    <div class="dropdown-search">
      <a href="#" data-toggle="dropdown">
        <!-- <i class="fa fa-search"></i> -->
        <img src="image/catalog/AlphaPoineer/general/search.png" alt="search" class="img-responsive menu-icon">
      </a>
      <ul class="dropdown-menu dropdown-menu-right">
        <div class="search-custom">
          <div class='search-box'>
            <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control" />
            <button type="button">
              <!-- <i class="fa fa-search"></i> -->
              <img src="image/catalog/AlphaPoineer/general/search.png" alt="search" class="img-responsive menu-icon">
            </button>
          </div>
        </div>
      </ul>
    </div>
  <?php }elseif($searchbar) { ?>
    <div class="search-custom">
      <div class='search-box'>
        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control" />
        <button type="button">
          <!-- <i class="fa fa-search"></i> -->
          <img src="image/catalog/AlphaPoineer/general/search.png" alt="search" class="img-responsive menu-icon">
        </button>
      </div>
    </div>
  <?php } ?>
<?php } ?>
