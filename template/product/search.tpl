<?php echo $header; ?>
<div class="wrapper">
  <div class="container">
    <div>
      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <h2><?php echo $text_search; ?></h2>
        <?php if ($products) { ?>
        <div>
          <div class="col-md-4 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
              <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
        <div>
          <div style="padding-top: 60px">
            <div class="container">
              <div class="container-fluid">
                <div class="row text-center">
                  <?php foreach ($products as $product) { ?>
                    <div class="col-xs-2 col-sm-6 col-xl-4 shop">
                      <a href="#" id="link" data-toggle="modal" data-target="#exampleModal<?php echo $product['product_id']; ?>">
                        <img class="img" src="<?php echo $product['thumb']; ?>">
                          <div class="name">
                            <?php if ($product['price']) { ?>
                            <div class="price">
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?>
                              <?php } else { ?>
                              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                              <?php } ?>
                            </div>
                            <?php } ?>
                            <button class="ell">
                              <?php echo $product['name']; ?>
                            </button>
                          </div>
                      </a>
                      <div class="modal fade" id="exampleModal<?php echo $product['product_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModal<?php echo $product['product_id']; ?>" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                          <div class="modal-content">
                            <div id="modal">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                              <img class="w-100 img-tov" src="<?php echo $product['thumb']; ?>"><br>
                              <span><?php echo $product['description']; ?></span><br>
                              <h4>Количество /</h4>
                              <h4>Цена /
                                <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                                <?php } else { ?>
                                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                              </h4>
                              <button id="btn" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                <span class="hidden-xs hidden-sm hidden-md">
                                  <?php echo $button_cart; ?>
                                </span>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } else { ?>
        <p><?php echo $text_empty; ?></p>
        <?php } ?>
        <?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>
  </div>
  <script type="text/javascript"><!--
  $('#button-search').bind('click', function() {
  	url = 'index.php?route=product/search';

  	var search = $('#content input[name=\'search\']').prop('value');

  	if (search) {
  		url += '&search=' + encodeURIComponent(search);
  	}

  	var category_id = $('#content select[name=\'category_id\']').prop('value');

  	if (category_id > 0) {
  		url += '&category_id=' + encodeURIComponent(category_id);
  	}

  	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

  	if (sub_category) {
  		url += '&sub_category=true';
  	}

  	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

  	if (filter_description) {
  		url += '&description=true';
  	}

  	location = url;
  });

  $('#content input[name=\'search\']').bind('keydown', function(e) {
  	if (e.keyCode == 13) {
  		$('#button-search').trigger('click');
  	}
  });

  $('select[name=\'category_id\']').on('change', function() {
  	if (this.value == '0') {
  		$('input[name=\'sub_category\']').prop('disabled', true);
  	} else {
  		$('input[name=\'sub_category\']').prop('disabled', false);
  	}
  });

  $('select[name=\'category_id\']').trigger('change');
  --></script>
  <?php echo $footer; ?>
</div>