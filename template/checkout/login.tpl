<div class="row">
	<div class="col-sm-6">
		<h2><?php echo $text_new_customer; ?></h2>
		<?php if ($checkout_guest) { ?>
		<div class="radio">
			<label>

				<input type="radio" name="account" value="guest" checked="checked" />
				Оформить заказ
			</label>
		</div>
		<?php } ?>
		<input type="button" value="<?php echo $button_continue; ?>" id="button-account" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
	</div>
</div>
