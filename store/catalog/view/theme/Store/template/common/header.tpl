<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title;  ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <meta property="og:title" content="<?php echo $title; ?>" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="<?php echo $og_url; ?>" />
  <?php if ($og_image) { ?>
  <meta property="og:image" content="<?php echo $og_image; ?>" />
  <?php } else { ?>
  <meta property="og:image" content="<?php echo $logo; ?>" />
  <?php } ?>
  <meta property="og:site_name" content="<?php echo $name; ?>" />
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/Store/stylesheet/stylesheet.css" rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
  <?php echo $analytic; ?>
  <?php } ?>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body class="<?php echo $class; ?>">
<header>
  <div class="content">
    <a href="/">
      <img class="logo" src="catalog/view/theme/Store/image/logo.png">
    </a>
  </div>
</header>
<nav class="nav">
  <div id="genre-btn" href="#" onclick="toggle('#vipad');">
    <span></span>
    <span></span>
    <span></span>
  </div>
  <div class="dropdown show">
    <button class="nav-btn"role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="outline: none;">Категории</button>
<?php if ($categories) { ?>
    <div class="dropdown-menu" id="dropdown-menu" aria-labelledby="dropdownMenuLink">
<?php foreach ($categories as $category) { ?>
      <button onclick="location='<?php echo $category['href']; ?>'" class="nav-btn"><?php echo $category['name']; ?></button>
<?php } ?>
    </div>
<?php } ?>
  </div>
  <button class="nav-btn" style="outline: none;" onclick="location='<?php echo $shopping_cart; ?>'">Корзина</button>
  <form class="search">
    <input class="search-txt" type="search" name="search" placeholder="Поиск">
    <button class="submit" type="submit" name="submit" value="Поиск"  style="outline: none;">
      <i class="fas fa-search"></i>
    </button>
  </form>
</nav>
<div id="vipad">
  <div id="genre-bar">
    <button class="vipad-btn">Корзина</button>
    <div class="dropdown show">
      <button class="vipad-btn"role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="outline: none; width: 100%;">Категории</button>
<?php if ($categories) { ?>
      <div class="dropdown-menu" id="dropdown-menu2" aria-labelledby="dropdownMenuLink">
<?php foreach ($categories as $category) { ?>
        <button onclick="location='<?php echo $category['href']; ?>'" class="vipad-btn"><?php echo $category['name']; ?></button>
<?php } ?>
      </div>
<?php } ?>
    </div>
  </div>
</div>