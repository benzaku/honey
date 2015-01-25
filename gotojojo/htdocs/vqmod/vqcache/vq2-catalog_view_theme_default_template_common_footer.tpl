<div id="footer">
  <?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
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
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<?php if($this->customer->isLogged()){ ?>
<div style="padding: 6px 8px 0 8px; background: #DBE1E5">You are signed in as <?php echo strtolower($this->customer->getEmail()); ?>.<br/>Click here to <a href="index.php?route=account/logout">Logout</a></div>
<?php } ?>
<div id="powered"><?php echo $powered; ?> <span class="mobile-powered" style="display: none;">Responsive theme by <a href="http://www.embermonkey.com/" target="_blank">Peter Stuart</a></span></div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>

                <script type="text/javascript">
                    var startPosition = 101;
                    var contentMargin =  28;

                    $(window).scroll(function() {
                        if($(window).scrollTop() > startPosition) {
                            width = $('#container #menu').width();
                            height = $('#container #menu').height();
                            $('#container #menu').css('position', 'fixed').css('top',0).css('width',width).css('border-radius','0px').css('z-index','999');
                            $('#container #content').css('margin-top', height+contentMargin);
                        } else {
                            $('#container #menu').removeAttr('style');
                            $('#container #content').removeAttr('style');
                        }
                    }); 
                </script>
            
</body></html>