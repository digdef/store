<?php echo $header; ?>
<div class="wrapper" style="text-align: center;">
	<div class="container">
		<div>
			<div id="content">
				<div>
					<div>
						<h1><?php echo $heading_title; ?></h1>
						<?php if ($price) { ?>
						<ul class="list-unstyled">
							<?php if (!$special) { ?>
							<li>
								<h2><?php echo $price; ?></h2>
							</li>
							<?php } else { ?>
							<li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
							<li>
								<h2><?php echo $special; ?></h2>
							</li>
							<?php } ?>
						</ul>
						<?php } ?>
						<div id="product">
							<?php if ($options) { ?>
							<hr>
							<h3><?php echo $text_option; ?></h3>
							<?php foreach ($options as $option) { ?>
							<?php if ($option['type'] == 'select') { ?>
							<div>
								<select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
									<option value=""><?php echo $text_select; ?></option>
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
										<?php if ($option_value['price']) { ?>
										(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
										<?php } ?>
									</option>
									<?php } ?>
								</select>
							</div>
							<?php } ?>
							<?php } ?>
							<?php } ?>
							<div class="form-group">
								<label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
								<input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
								<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
								<br />
								<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
							</div>
							<?php if ($minimum > 1) { ?>
							<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"><!--
	$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
		$.ajax({
			url: 'index.php?route=product/product/getRecurringDescription',
			type: 'post',
			data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
			dataType: 'json',
			beforeSend: function() {
				$('#recurring-description').html('');
			},
			success: function(json) {
				$('.alert, .text-danger').remove();

				if (json['success']) {
					$('#recurring-description').html(json['success']);
				}
			}
		});
	});
	//--></script>
	<script type="text/javascript"><!--
	$('#button-cart').on('click', function() {
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
			dataType: 'json',
			beforeSend: function() {
				$('#button-cart').button('loading');
			},
			complete: function() {
				$('#button-cart').button('reset');
			},
			success: function(json) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');

				if (json['error']) {
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							var element = $('#input-option' + i.replace('_', '-'));

							if (element.parent().hasClass('input-group')) {
								element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
							} else {
								element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
							}
						}
					}

					if (json['error']['recurring']) {
						$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
					}

					// Highlight any found errors
					$('.text-danger').parent().addClass('has-error');
				}

				if (json['success']) {
					$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

					$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

					$('html, body').animate({ scrollTop: 0 }, 'slow');

					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	});
	//--></script>
	<script type="text/javascript"><!--
	$('.date').datetimepicker({
		pickTime: false
	});

	$('.datetime').datetimepicker({
		pickDate: true,
		pickTime: true
	});

	$('.time').datetimepicker({
		pickDate: false
	});

	$('button[id^=\'button-upload\']').on('click', function() {
		var node = this;

		$('#form-upload').remove();

		$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

		$('#form-upload input[name=\'file\']').trigger('click');

		if (typeof timer != 'undefined') {
	    	clearInterval(timer);
		}

		timer = setInterval(function() {
			if ($('#form-upload input[name=\'file\']').val() != '') {
				clearInterval(timer);

				$.ajax({
					url: 'index.php?route=tool/upload',
					type: 'post',
					dataType: 'json',
					data: new FormData($('#form-upload')[0]),
					cache: false,
					contentType: false,
					processData: false,
					beforeSend: function() {
						$(node).button('loading');
					},
					complete: function() {
						$(node).button('reset');
					},
					success: function(json) {
						$('.text-danger').remove();

						if (json['error']) {
							$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
						}

						if (json['success']) {
							alert(json['success']);

							$(node).parent().find('input').val(json['code']);
						}
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			}
		}, 500);
	});
	//--></script>
	<script type="text/javascript"><!--
	$('#review').delegate('.pagination a', 'click', function(e) {
	    e.preventDefault();

	    $('#review').fadeOut('slow');

	    $('#review').load(this.href);

	    $('#review').fadeIn('slow');
	});

	$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

	$('#button-review').on('click', function() {
		$.ajax({
			url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
			type: 'post',
			dataType: 'json',
			data: $("#form-review").serialize(),
			beforeSend: function() {
				$('#button-review').button('loading');
			},
			complete: function() {
				$('#button-review').button('reset');
			},
			success: function(json) {
				$('.alert-success, .alert-danger').remove();

				if (json['error']) {
					$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
				}

				if (json['success']) {
					$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

					$('input[name=\'name\']').val('');
					$('textarea[name=\'text\']').val('');
					$('input[name=\'rating\']:checked').prop('checked', false);
				}
			}
		});
	    grecaptcha.reset();
	});

	$(document).ready(function() {
		$('.thumbnails').magnificPopup({
			type:'image',
			delegate: 'a',
			gallery: {
				enabled:true
			}
		});
	});

	$(document).ready(function() {
		var hash = window.location.hash;
		if (hash) {
			var hashpart = hash.split('#');
			var  vals = hashpart[1].split('-');
			for (i=0; i<vals.length; i++) {
				$('#product').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
				$('#product').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
				$('#product').find('input[type="checkbox"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
			}
		}
	})
	//--></script>
	<?php echo $footer; ?>
	<script src="catalog/view/theme/Store/js/main.js"></script>
</div>
