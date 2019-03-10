<?php echo $header; ?>
<div class="container">
  <div class="row">
    <div class="error"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <p><?php echo $text_error; ?></p>
      <div class="buttons clearfix">
        <div class="pull-right">
        	<button onclick="location='<?php echo $continue; ?>'" id="btn"><?php echo $button_continue; ?></button>
        </div>
      </div>
      <?php echo $content_bottom; ?>
  </div>
    <?php echo $column_right; ?></div>
</div>
<script src="catalog/view/theme/Store/js/main.js"></script>