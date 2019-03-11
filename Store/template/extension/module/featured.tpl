<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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