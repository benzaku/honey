<div id="carousel<?php echo $module; ?>">

<span style="display: none;" class="scroll">Scroll and tap to view brands</span>
			
  <ul class="jcarousel-skin-opencart">
    <?php foreach ($banners as $banner) { ?>
    <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
    <?php } ?>
  </ul>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?> ul').jcarousel({
	vertical: false,
	visible: <?php echo $limit; ?>,
	scroll: <?php echo $scroll; ?>
});
//--></script>

<style>
@media only screen and (max-width : 320px) { 
.jcarousel-list {
	width: <?php echo count($banners).'00px !important;'; ?>
}
}
</style>
			