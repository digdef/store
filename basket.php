<!DOCTYPE html>
<html>
<head>
	<title>Store</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>
	<header>
		<div class="content">
			<a href="">
				<img class="logo" src="img/logo.png">
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
			<div class="dropdown-menu" id="dropdown-menu" aria-labelledby="dropdownMenuLink">
				<button class="nav-btn">Порошки</button>
				<button class="nav-btn">Бытавуха</button>
				<button class="nav-btn">Природное</button>
			</div>
		</div>
		<button class="nav-btn" style="outline: none;">Корзина</button>
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
				<div class="dropdown-menu" id="dropdown-menu2" aria-labelledby="dropdownMenuLink">
					<button class="vipad-btn">Порошки</button>
					<button class="vipad-btn">Бытавуха</button>
					<button class="vipad-btn">Природное</button>
				</div>
			</div>
		</div>
	</div>
	<div style="padding-top: 60px">
		<div class="basket-title container">
			<div class='text' style='width: 50%;'>
				<h2>Товар</h2>
			</div>
			<div class='text' style='width: 40%;'>
				<h2>Количество/Цена</h2>
			</div>
		</div>
		<div class="basket container">
			<div class='text' style='width: 50%;'>
				<img src="img/1.jpg" class="basket-img">
				<h2>Порошок</h2>
			</div>
			<div class='text' style='width: 40%;'>
				<h2>1 шт.</h2>
				<h2>/</h2>
				<h2>1451$</h2>
			</div>
			<div class='text' style='padding: 0px; justify-content: flex-end;'>
				<button class="button-primary">Удалить</button>
			</div>
		</div>
		<div class="container basket-btn">
			<button id="btn" style="margin-right: 30px;">Очистить</button>
			<button id="btn" style="margin-left: 30px;">Оплатить</button>			
		</div>

	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>