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
			<a href="/">
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
		<button class="nav-btn" style="outline: none;" onclick="location='/basket.php'">Корзина</button>
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
		<div class="container">
			<div class="container-fluid">
				<div class="row text-center">
					<div class="col-xs-2 col-sm-6 col-xl-4 shop">
						<a href="\" id="link" data-toggle="modal" data-target="#exampleModal">
							<img src="img/1.jpg" class="w-100 img">
							<div class="name">
								<div class="price">
									1451$
								</div>
								<button class="ell">
									Порошок
								</button>
							</div>
						</a>
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
								<div class="modal-content">
									<div class="container" id="modal">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<img src="img/1.jpg" class="w-100 img-tov"><br>
										<span>Tide («Тайд») — торговая марка компании Procter & Gamble, выпускающей под этим брендом стиральные порошки, а также жидкие средства для стирки. Оборот торговой марки Tide превышает 1 млрд долларов США в год</span><br>
										<h4>Количество/</h4>
										<h4>Цена/</h4>
										<button id="btn">Купить Сейчас!</button>
										<button id="btn">Добавить в Корзину!</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-2 col-sm-6 col-xl-4 shop">
						<a href="\" id="link">
							<img src="img/2.jpg" class="w-100 img">
							<div class="name">
								<div class="price">
									1$
								</div>
								<button class="ell">
									Трава
								</button>
							</div>
						</a>
					</div>
					<div class="col-xs-2 col-sm-6 col-xl-4 shop">
						<a href="\" id="link">
							<img src="img/3.jpg" class="w-100 img">
							<div class="name">
								<div class="price">
									100$
								</div>
								<button class="ell">
									Верёвка
								</button>
							</div>
						</a>
					</div>
					<div class="col-xs-2 col-sm-6 col-xl-4 shop">
						<a href="\" id="link">
							<img src="img/4.jpg" class="w-100 img">
							<div class="name">
								<div class="price">
									120$
								</div>
								<button class="ell">
									Мыло
								</button>
							</div>
						</a>
					</div>
					<div class="col-xs-2 col-sm-6 col-xl-4 shop">
						<a href="\" id="link">
							<img src="img/5.jpg" class="w-100 img">
							<div class="name">
								<div class="price">
									111$
								</div>
								<button class="ell">
									Табурет
								</button>
							</div>
						</a>
					</div>
					<div class="col-xs-2 col-sm-6 col-xl-4 shop">
						<a href="\" id="link">
							<img src="img/6.jpg" class="w-100 img">
							<div class="name">
								<div class="price">
									0$
								</div>
								<button class="ell">
									Снег
								</button>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<a id="link2" href="">telegram</a>
	</footer>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>