
<div class="container" style="padding-bottom: 50px;">
    <div class="col-md-12">
        <h4 class="text-center" id="why-partner-us">
        <?php echo $title; ?>
        </h4>
        <div class="winn-desc"><?php echo html($main_description);?></div>
    </div>
    <div class="row centered">
    <?php foreach ($items as $item) { ?>
        <div class="col-md-4 col-sm-4 col-xs-12 winning_partner_items">
            <img class="winning_image" src="<?=$item['upload']; ?> " alt="winning"/>
            <h5 class="winning_title"><?php echo $item['title']; ?></h5>
            <p style="text-align: justify;" class="winning-desc"><?php echo $item['text']?></p>

        </div>
    <?php } ?>
    </div>
</div>
<style>
.winning_title {
    margin: 20px 0 20px 0;
    font-weight: bold;
    line-height: 21px;
    font-size: calc(13px + (27 - 20) * (100vw - 320px) / (1920 - 320));
}
.winning_image{
    /* max-width: 171px; */
    height: 188px;
    width: 171px;
    margin: 0;
}
.main-heading::before{
    background-color: none !important;
}
</style>
