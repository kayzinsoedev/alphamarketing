
<div id="module_toolbar" class="toolbar navbar navbar-fixed-top navbar-inverse">
	<ul style="display: block;" class="left sf-js-enabled dropdown">
		<li id="module_setting"><a class="top" href="<?php echo $link_to_module;?>"><span class="icon-module"></span><span><?php echo $language->get("text_ecadvancedreports_module"); ?></span></a></li>
		<li id="ecreports"><a class="top dropdown-toggle js-activated" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false" href="javascript:;"><span><?php echo $language->get("text_ecadvancedreports_reports"); ?></span> <b class="caret"></b></a>
			<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
				<li><a href="<?php echo $link_report_sale_order; ?>"><?php echo $text_report_sale_order; ?></a></li>
				<li><a href="<?php echo $link_report_product; ?>"><?php echo $text_report_product; ?></a></li>
				<li><a href="<?php echo $link_report_product_inventory; ?>"><?php echo $text_report_product_inventory; ?></a></li>
				<li><a href="<?php echo $link_report_bestseller; ?>"><?php echo $text_report_product_bestseller; ?></a></li>
				<li><a href="<?php echo $link_report_sale_zip_code; ?>">Sales By Area</a></li>
				<li><a href="<?php echo $link_report_sale_by_hour; ?>"><?php echo $text_report_sale_by_hour; ?></a></li>
				<li><a href="<?php echo $link_report_sale_coupon; ?>"><?php echo $text_report_sale_by_coupon_code; ?></a></li>
				<li><a href="<?php echo $link_report_sale_payment_type; ?>"><?php echo $text_report_sale_by_payment_type; ?></a></li>
				<li><a href="<?php echo $link_report_top_customer; ?>"><?php echo $text_report_top_customer; ?></a></li>

				<!-- <li class="dropdown-submenu"><a class="parent"><?php echo $text_advanced; ?></a>
		            <ul class="dropdown-menu">
		              <li><a href="<?php echo $link_report_sale_order; ?>"><?php echo $text_report_sale_order; ?></a></li>
		              <li><a href="<?php echo $link_to_sales_by_customer_group; ?>"><?php echo $text_sales_by_customer_group; ?></a></li>
		              <li><a href="<?php echo $link_to_sales_by_customer_company; ?>"><?php echo $text_sales_by_customer_company; ?></a></li>
		              <li><a href="<?php echo $link_report_customer; ?>"><?php echo $text_report_customer; ?></a></li>
		              <li><a href="<?php echo $link_report_customer_notorder; ?>"><?php echo $text_report_customer_notorder; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_by_country; ?>"><?php echo $text_report_sale_by_country; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_product_per_country; ?>"><?php echo $text_report_sale_product_per_country; ?></a></li>
		              
		              <li><a href="<?php echo $link_report_sale_by_hour; ?>"><?php echo $text_report_sale_by_hour; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_by_day_week; ?>"><?php echo $text_report_sale_by_day_of_week; ?></a></li>
		              <li><a href="<?php echo $link_report_user_activity; ?>"><?php echo $text_report_user_activity; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_report; ?>"><?php echo $text_report_sale_report; ?></a></li>
		              <li><a href="<?php echo $link_to_sales_by_product; ?>"><?php echo $text_report_sale_by_product; ?></a></li>
		              <li><a href="<?php echo $link_to_sales_by_profit; ?>"><?php echo $text_report_sale_by_profit; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_by_category; ?>"><?php echo $text_report_sale_category; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_by_manufacturer; ?>"><?php echo $text_report_sale_by_manufacturer; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_statistic; ?>"><?php echo $text_report_sale_statistic; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_coupon; ?>"><?php echo $text_report_sale_by_coupon_code; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_payment_type; ?>"><?php echo $text_report_sale_by_payment_type; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_state; ?>"><?php echo $text_report_sale_by_state; ?></a></li>
		              <li><a href="<?php echo $link_report_sale_zip_code; ?>"><?php echo $text_report_sale_by_zip_code; ?></a></li>

		            </ul>
		        </li>
		        <li class="dropdown-submenu"><a class="parent"><?php echo $text_product; ?></a>
		            <ul class="dropdown-menu">
		              <li><a href="<?php echo $link_report_product; ?>"><?php echo $text_report_product; ?></a></li>
		              <li><a href="<?php echo $link_report_product_inventory; ?>"><?php echo $text_report_product_inventory; ?></a></li>
		              <li><a href="<?php echo $link_report_bestseller; ?>"><?php echo $text_report_product_bestseller; ?></a></li>
		              <li><a href="<?php echo $link_report_product_notsold; ?>"><?php echo $text_report_product_notsold; ?></a></li>
		              <li><a href="<?php echo $link_product_list; ?>"><?php echo $text_product_list; ?></a></li>
		            </ul>
		          </li>
		        <li class="dropdown-submenu"><a class="parent"><?php echo $text_customer; ?></a>
		            <ul class="dropdown-menu">
		              <li><a href="<?php echo $link_report_top_customer; ?>"><?php echo $text_report_top_customer; ?></a></li>
		              <li><a href="<?php echo $link_report_customer_by_city; ?>"><?php echo $text_report_customer_by_city; ?></a></li>
		              <li><a href="<?php echo $link_report_customer_by_country; ?>"><?php echo $text_report_customer_by_country; ?></a></li>
		              
		            </ul>
		        </li>
		        <li class="dropdown-submenu"><a class="parent"><?php echo $text_order; ?></a>
		            <ul class="dropdown-menu">
		              <li><a href="<?php echo $link_report_order; ?>"><?php echo $text_report_order; ?></a></li>
		            </ul>
		        </li>
		        <li>
		        	<a href="<?php echo $link_report_earnings; ?>"><?php echo $text_earnings; ?></a>
		        </li> -->
			</ul>
		</li>
		<li id="echelp" style="float:right"><a href="mailto:ecomteck@gmail.com" class="support"><span class="icon-support"></span><span><?php echo $language->get("text_ecadvancedreports_support"); ?></span></a></li>
	</ul>
</div>

<script type="text/javascript">
 // very simple to use!
    $(document).ready(function() {
      $('.js-activated').dropdownHover().dropdown();
    });
</script>