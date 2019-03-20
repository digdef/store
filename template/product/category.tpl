<?php echo $header; ?>
<div class="wrapper">
  <div class="container">
    <div>
      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <h1 style="text-align: center;"><?php echo $heading_title; ?></h1>
        <?php if ($categories) { ?>
        <h3 style="text-align: center;"><?php echo $text_refine; ?></h3>
        <?php if (count($categories) <= 5) { ?>
        <div style="display: flex;justify-content: center;">
          <div class="col-sm-3">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <?php } else { ?>
        <div class="row">
          <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
          <div class="col-sm-3">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
        </div>
        <?php } ?>
        <?php } ?>
        <?php if ($products) { ?>
        <div class="row"  style="display: flex;justify-content: center;">
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
          <div class="col-md-3 col-xs-6">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
              <select id="input-limit" class="form-control" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
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
                            <h4>Цена /
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?>
                              <?php } else { ?>
                              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                              <?php } ?>
                            </h4>
                            <button id="btn" type="button" onclick="location='<?php echo $product['href']; ?>'"><?php echo $product['name']; ?></button>
                            <button id="btn" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
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
        <?php } ?>
        <?php if (!$categories && !$products) { ?>
        <p><?php echo $text_empty; ?></p>
        <div class="buttons">
          <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
        </div>
        <?php } ?>
        <?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>
  </div>
  <?php echo $footer; ?>
</div>