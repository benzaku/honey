<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<center>
  <div class="login-content">
    <div class="right">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="content">
                <p><?php echo $text_i_am_returning_customer; ?></p>
                <b><?php echo $entry_email; ?></b><br />
                <input type="text" name="email" value="<?php echo $email; ?>" />
                <br />
                <b><?php echo $entry_password; ?></b><br />
                <input type="password" name="password" value="<?php echo $password; ?>" />
                <br />
                <input type="submit" value="<?php echo $button_login; ?>" class="button" />
                <?php if ($redirect) { ?>
                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                <?php } ?>
            </div>
        </form>
    </div>
    <div class="left">
      <div class="content">
        <a href="<?php echo $register; ?>" class="button">注册新账号</a></div>
    </div>

  </div>
</center>
  <script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script>
