<div id="footer">
  <div class="fooLeft">
  	<?php 
		$welcome = $this->config->get('welcome_module'); 
		echo html_entity_decode($welcome[2]["description"][2]);
	?>  
  </div>	
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>

  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
  <div class="clear"></div>
</div>
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donatation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered"><p class="credits">Powered by <a href="http://opencart.com">OpenCart</a>. Theme by <a href="http://themeforest.net/user/raviG/portfolio?ref=raviG">raviG</a></p>.
<p class="cards">credit cards</p>
<div class="clear"></div>
</div>
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donatation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</body></html>