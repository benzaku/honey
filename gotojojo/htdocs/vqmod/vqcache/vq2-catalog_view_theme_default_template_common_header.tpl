<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/f_i_common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!-- Autofill search -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/livesearch.css" />
<script src="catalog/view/javascript/jquery/livesearch.js"></script>
<!-- Autofill search END-->
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>

<script type="text/javascript">
</script>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet-mobile.css" />
<style>
.show, .show-table-cell {
	display: none;
}
input[type='email'],input[type='tel'] {
	background: none repeat scroll 0 0 #F8F8F8;
	border: 1px solid #CCCCCC;
	padding: 3px;
	margin-left: 0px;
	margin-right: 0px;
}
</style>
<script type="text/javascript" src="catalog/view/javascript/mobile/mobile.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	/* Search */
	$('.button-search-mobile').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var search = $('#search_mobile input').attr('value');
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
});
</script>
			
</head>
<body>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><?php if ($logged) { ?><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?><?php } ?></a></div>

	        
</div>
<?php if ($categories) { ?>

<div id="menu-mobile" style="display: none;">
	<div>
		<span class="select closed"></span>
		<span>
		<?php if(!isset($_GET['product/category']) && !isset($_GET['path'])){
			echo "Categories";
			}elseif(isset($_GET['product_id'])){
			echo "Categories";
			}else{
			echo $title;
			}
			?>
		</span>
	</div>
  	<ul class="closed">
    	<?php foreach ($categories as $category) { ?>
    		<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
    	<?php } ?>
  	</ul>
</div>
<div id="links-mobile" style="display: none;">
	<a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
	<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
	<a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
	<a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
</div>
  <div id="search_mobile" style="display: none;">
<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
	<div class="button-search-mobile m">Search</div>
  </div>
			
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
