<?php if ($article) { ?>
	<div>
		<?=$news_archive;?>
	</div>

	<div class="news-list-wrap flex flex-wrap">
		<?php foreach ($article as $articles) { ?>


			<div class="news-post b4-col b4-col-100p m-b-md b4-col-33p-md pd-t15 pd-b15">
				<div class="article-with-border">
					<div class="article-image-wrapper relative hover-overlay">
						<?php if ($articles['thumb']) { ?>
						<a href="<?php echo $articles['href']; ?>">
							<div class="cover-bg transition center-bg pd-b80p" style="background-image:url('<?php echo $articles['thumb']; ?>');"></div>
							<?php /* ?>
							<img class="article-image img-responsive" src="" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
							<?php */ ?>
						</a>
						<?php } ?>
						<div class="to-overlay">
							<a href="<?php echo $articles['href']; ?>" class="block absolute position-all0">
								<div class="absolute position-center-center colorwhite"><i class="fa fa-search fa-2em"></i></div>
							</a>
						</div>
					</div>
					<div class="article-text-wrapper">
						<?php if ($articles['name']) { ?>
							<div class="article-name bold pd-b15"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
						<?php } ?>
						<?php if ($articles['date_added']) { ?>
							<div class="pd-b15"><?php echo $articles['date_added']; ?></div>
						<?php } ?>
						<?php if ($articles['description']) { ?>
							<div class="article-description pd-b15"><?php echo $articles['description']; ?></div>
						<?php } ?>
						<?php if ($articles['button']) { ?>
							<div class="article-button"><a class="btn btn-primary" href="<?php echo $articles['href']; ?>"><?php echo $button_read_more; ?></a></div>
						<?php } ?>
					</div>
				</div>

			</div>
		<?php } ?>
  </div>
  <div class="text-center pd-b60"><?php echo $pagination; ?></div>

<script type="text/javascript"><!--
//--></script>
<?php } ?>
