<?php echo $header; ?>
<div class="wrapper">
  <div class="container wrapper">
    <?php if ($attention) { ?>
    <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div>
      <div id="content" class="<?php echo $class; ?>">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <div>
            <div class="basket-title container">
              <div class='text' style='width: 50%;'>
                <h2>Товар</h2>
              </div>
              <div class='text' style='width: 40%;'>
                <h2>Количество/Цена</h2>
              </div>
            </div>
            <?php foreach ($products as $product) { ?>
            <div class="basket container">
              <div class='text' style='width: 50%;'>
                <?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>">
                  <img src="<?php echo $product['thumb']; ?>" class="basket-img" />
                </a>
                <?php } ?>
                <h2><?php echo $product['name']; ?></h2>
              </div>
              <div class='text' style='width: 40%;'>
                
                
                  <div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                    <span class="input-group-btn">
                      <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>"  id="btn"><i class="fa fa-refresh"></i></button>
                    </span>
                  </div>
                
                <h2>/</h2>
                <h2><?php echo $product['price']; ?></h2>
              </div>
              <div class='text' style='padding: 0px; justify-content: flex-end;'>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="button-primary" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">Удалить</button>
              </div>
            </div>
            <?php } ?>
          </div>
        </form>
        <div class="row" style="display: flex; justify-content: center;">
          <div class="col-sm-4 col-sm-offset-8">
            <table class="table table-bordered">
              <?php foreach ($totals as $total) { ?>
              <tr>
                <td class="text-right">
                  <strong><?php echo $total['title']; ?></strong>
                </td>
                <td class="text-right"><?php echo $total['text']; ?></td>
              </tr>
              <?php } ?>
            </table>
          </div>
        </div>
        <div>
          <div class="pull-left">
            <button onclick="location='<?php echo $continue; ?>'" id="btn" ><?php echo $button_shopping; ?></button>
          </div>
          <div class="pull-right">
            <button onclick="location='<?php echo $checkout; ?>'" id="btn"><?php echo $button_checkout; ?></button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php echo $footer; ?>
</div>