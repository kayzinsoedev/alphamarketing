<div class="product-gutter" id="product-<?=$product_id?>"> <?php /* product option in product component :: add product id to div  */ ?>
	<div class="product-block <?= $out_of_stock; ?>">
		<div class="product-main-flex">
				<div class="product-image-block transition relative image-zoom-hover">
					<?php if($sticker && $sticker['name']){ ?>
					<a
					href="<?= $href; ?>"
					title="<?= $name; ?>"
					class="sticker absolute <?= $sticker['image'] ? 'sticker-image':''; ?> <?php if($out_of_stock){echo 'out_of_stock';} ?> "
					style="color: <?= $sticker['color']; ?>!important; background-color: <?= $sticker['background-color']; ?>">
						<?php if($sticker['image']){ ?>
						    <img src="<?= $sticker['image'] ?>" />
						<?php } else {
						    echo html($sticker['name']);
						} ?>
					</a>
					<?php } ?>
					<?php if($show_special_sticker){ ?>
					<a
					href="<?= $href; ?>"
					title="<?= $name; ?>"
					class="special-sticker absolute <?= $sticker ? 'abjust_sticker' : '' ?>"
					style="top:<?= $sticker ? '30px' : '0px' ?>; color: #fff!important; background-color: red;">
						<?= $text_sale; ?>
					</a>
					<?php } ?>
					<a
						href="<?= $href; ?>"
						title="<?= $name; ?>"
						class="product-image image-container relative" >
						<img
							src="<?= $thumb; ?>"
							alt="<?= $name; ?>"
							title="<?= $name; ?>"
							class="img-responsive img1" />
						<?php if($thumb2 && $hover_image_change) { ?>
							<img
								src="<?= $thumb2; ?>"
								alt="<?= $name; ?>"
								title="<?= $name; ?>"
								class="img-responsive img2" style="display: none"/>
						<?php } ?>
						<?php /*if($more_options){ ?>
						<div class="more-options-text absolute position-bottom-center">
							<?= $more_options; ?>
						</div>
						<?php }*/ ?>
					</a>
					<div class="btn-group product-button">
						<?php if ($options) { ?>
							<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-cart btn-cart-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"
								<?php if($enquiry){ ?>
									class="btn btn-default btn-enquiry btn-enquiry-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"
								<?php }else{ ?>
									class="btn btn-default btn-cart btn-cart-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"
								<?php } ?>
								>
								<?= $button_cart; ?>
								<!-- <img style="width: 20px; margin-left: 6px; margin-top: 4px" src="./image/catalog/AlphaPoineer/general/arrow.png"/> -->
							</button>
						<?php } else { ?>

							<?php if(!$enquiry){ ?>
								<?php if(!$not_avail) { ?>
									<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-cart btn-cart-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"><span class="cart-words"><?= $button_cart; ?></span>

									</button>
								<?php }else{ ?>
									<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-cart btn-cart-<?= $product_id; ?>" disabled data-product-id="<?= $product_id; ?>"><span class="cart-words">Out of stock</span></button>
								<?php } ?>
							<?php }else{ ?>
								<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-enquiry btn-enquiry-<?= $product_id; ?>"  data-product-id="<?= $product_id; ?>"><span class="cart-words"><?= $button_enquiry; ?></span></button>
							<?php } ?>
						<?php } ?>

					</div>
				</div>
	</div>
		<!--<div class="product_box_detail">-->
		<div class="product-bottom">
			<?php if($category){ ?>
				<div class="product-category">
					<?= $category; ?>
				</div>
			<?php } ?>
			<?php if($manufacturer){ ?>
				<div class="product-brand">
					<?= $manufacturer; ?>
				</div>
			<?php } ?>
			<div class="product-name">
				<a href="<?= $href; ?>"><?= $name; ?></a>
			</div>

			<div class="product-model">
				<a href="<?= $href; ?>"><?= $model; ?></a>
			</div>

			<?php /* product option in product component */ ?>
			<div class="product-inputs">
				<div class="form-group hide">
					<label class="control-label hide"><?= $entry_qty; ?></label>
					<div class="input-group">
					<span class="input-group-btn">
						<button type="button" class="btn btn-default btn-number" data-type="minus" data-field="qty-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>" onclick="descrement($(this).parent().parent())")>
							<span class="glyphicon glyphicon-minus"></span>
						</button>
					</span>
					<input type="text" name="quantity" class="form-control input-number integer text-center" id="input-quantity-<?= $product_id; ?>" value="<?= $minimum; ?>" data-product-id="<?= $product_id; ?>" >
					<span class="input-group-btn">
						<button type="button" class="btn btn-default btn-number" data-type="plus" data-field="qty-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>" onclick="increment($(this).parent().parent())">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</span>
					</div>
				</div>
			</div>

			<div class="flex price_button">
				<div class="product-details product-price-<?=$product_id?>">
						<?php if ($price && !$enquiry) { ?>
							<div class="price">
								<?php if (!$special) { ?>
									<span class="price-new"><?= $price; ?></span>
								<?php } else { ?>
									<span class="price-new price-special"><?= $special; ?></span>
									<span class="price-old"><?= $price; ?></span>
								<?php } ?>
								<?php if ($tax) { ?>
									<span class="price-tax"><?= $text_tax; ?> <?= $tax; ?></span>
								<?php } ?>
							</div>
						<?php } ?>

						<?php if($enquiry){ ?>
							<div class="price">
								<span class="price-special"><?= $label_enquiry; ?></span>
							</div>
						<?php } ?>
				</div>
				<div class="cart-buttons" style="float: right;">
					<input type="hidden" name="product_id" value="<?=$product_id?>">
					<?php if(!$enquiry){ ?>
						<?php if(!$not_avail) { ?>
							<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-cart btn-cart-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"><span class="cart-words"><?= $button_cart; ?></span>

							</button>
						<?php }else{ ?>
							<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-cart btn-cart-<?= $product_id; ?>" disabled data-product-id="<?= $product_id; ?>"><span class="cart-words">Out of stock</span></button>
						<?php } ?>
					<?php }else{ ?>
						<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-enquiry btn-enquiry-<?= $product_id; ?>"  data-product-id="<?= $product_id; ?>"><span class="cart-words"><?= $button_enquiry; ?></span></button>
					<?php } ?>
				</div>
			</div>
		<!--</div>-->

		<?php /* product option in product component */ ?>
	</div>

		<?php /*if($rating) { ?>
		<div class="rating">
			<?php for ($i = 1; $i <= 5; $i++) { ?>
			<?php if ($rating < $i) { ?>
			<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
			<?php } else { ?>
			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
			<?php } ?>
			<?php } ?>
		</div>
		<?php }*/ ?>
	</div>
</div>
