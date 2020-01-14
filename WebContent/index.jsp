<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>ITSTEP - Aluguel de Veículos</title>
<meta name="description"
	content="Scarica gratis il nostro Template HTML/CSS GARAGE. Se avete bisogno di un design per il vostro sito web GARAGE può fare per voi. Web Domus Italia">
<meta name="author" content="Web Domus Italia">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="source/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="source/font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="style/slider.css">
<link rel="stylesheet" type="text/css" href="style/mystyle.css">
</head>
<body>
	<!-- Header -->
	<div class="allcontain">
		<div class="header">
			<ul class="socialicon">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			</ul>
			<ul class="givusacall">
				<li>Give us a call : +66666666</li>
			</ul>
			<ul class="logreg">
				<li><a href="#">Login </a></li>
				<li><a href="#"><span class="register">Cadastrar-se</span></a></li>
			</ul>
		</div>
		<!-- Navbar Up -->
		<nav class="topnavbar navbar-default topnav">
			<div class="container">
				<div class="navbar-header">
					<button type="button"
						class="navbar-toggle collapsed toggle-costume"
						data-toggle="collapse" data-target="#upmenu" aria-expanded="false">
						<span class="sr-only"> Toggle navigaion</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand logo" href="#"><img
						src="image/logo1.png" alt="logo"></a>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="upmenu">
				<ul class="nav navbar-nav" id="navbarontop">
					<li class="active"><a href="#">INICIO</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">CATEGORIAS <span class="caret"></span></a>
						<ul class="dropdown-menu dropdowncostume">
							<li><a href="#">Sports</a></li>
							<li><a href="#">Antigos</a></li>
							<li><a href="#">Modernos</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Alugueis <span class="caret"></span></a>
						<ul class="dropdown-menu dropdowncostume">
							<li><a href="aluguel_carro_economico.jsp">Econômico</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
						</ul></li>
					<li><a href="contact.html">Contato</a></li>
					<button>
						<span class="postnewcar">Publicar um novo carro</span>
					</button>
				</ul>
			</div>
		</nav>
	</div>
	<!--_______________________________________ Carousel__________________________________ -->
	<div class="allcontain">
		<div id="carousel-up" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner " role="listbox">
				<div class="item active">
					<img src="image/oldcar.jpg" alt="oldcar">
					<div class="carousel-caption">
						<h2>Porsche 356</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur ,<br> sed do eiusmod
							tempor incididunt ut labore
						</p>
					</div>
				</div>
				<div class="item">
					<img src="image/porche.jpg" alt="porche">
					<div class="carousel-caption">
						<h2>Porche</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur ,<br> sed do eiusmod
							tempor incididunt ut labore
						</p>
					</div>
				</div>
				<div class="item">
					<img src="image/benz.jpg" alt="benz">
					<div class="carousel-caption">
						<h2>Car</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur ,<br> sed do eiusmod
							tempor incididunt ut labore
						</p>
					</div>
				</div>
			</div>
			<nav class="navbar navbar-default midle-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed textcostume"
						data-toggle="collapse" data-target="#navbarmidle"
						aria-expanded="false">
						<h1>SEARCH TEXT</h1>
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="navbarmidle">
					<div class="searchtxt">
						<h1>FILTRAR</h1>
					</div>
					<form class="navbar-form navbar-left searchformmargin"
						role="search">
						<div class="form-group">
							<input type="text" class="form-control searchform"
								placeholder="Palavra Chave">
						</div>
					</form>
					<ul class="nav navbar-nav navbarborder">
						<li class="li-category"><a
							class="btn  dropdown-toggle btn-costume" id="dropdownMenu1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Categoria<span
								class="glyphicon glyphicon-chevron-down downicon"></span></a>
							<ul class="dropdown-menu" id="mydd">
								<li><a href="#">Epic</a></li>
								<li><a href="#">Velhos</a></li>
								<li><a href="#">Modernos</a></li>
							</ul></li>
						<li class="li-minyear"><a
							class="btn  dropdown-toggle btn-costume" id="dropdownMenu2"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Min
								Ano <span class="glyphicon glyphicon-chevron-down downicon"></span>
						</a>
							<ul class="dropdown-menu" id="mydd2">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
							</ul></li>
						<li class="li-maxyear"><a
							class="btn dropdown-toggle btn-costume" id="dropdownMenu3"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Max
								Ano <span class="glyphicon glyphicon-chevron-down downicon"></span>
						</a>
							<ul class="dropdown-menu" id="mydd3">
								<li><a href="#">1900</a></li>
								<li><a href="#">2000</a></li>
								<li><a href="#">2016</a></li>
							</ul></li>
						<li class="li-slideVALOR">
							<p>
								<label class="slidertxt" for="amount">Valor </label> <input
									class="VALORslider" type="text" id="amount" readonly="readonly">
							</p>
							<div id="slider-range"></div>

						</li>
						<li class="li-search">
							<button class="searchbutton">
								<span class="glyphicon glyphicon-search "></span>
							</button>
						</li>
					</ul>

				</div>
			</nav>
		</div>
	</div>
	<!-- ____________________Featured Section ______________________________-->
	<div class="allcontain">
		<div class="feturedsection">
			<h1 class="text-center">
				<span class="bdots">&bullet;</span>C A R R O S <span
					class="carstxt">E M</span>
					<span class="bdots">A L T A</span>&bullet;
			</h1>
		</div>
		<div class="feturedimage">
			<div class="row firstrow">
				<div class="col-lg-6 costumcol colborder1">
					<div class="row costumrow">
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
							<img src="image/featurporch.jpg" alt="porsche">
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
							<div class="featurecontant">
								<h1>LOREM IPSUM</h1>
								<p>
									"Lorem ipsum dolor sit amet, consectetur ,<br> sed do
									eiusmod tempor incididunt
								</p>
								<h2>VALOR R&dollar;</h2>
								<button id="btnRM" onclick="rmtxt()">LEIA MAIS</button>
								<div id="readmore">
									<h1>Nome do Carro</h1>
									<p>
										"Lorem ipsum dolor sit amet, consectetur ,<br> sed do
										eiusmod tempor incididunt <br>"Lorem ipsum dolor sit
										amet, consectetur ,<br> sed do eiusmod tempor
										incididunt"Lorem ipsum dolor sit amet, consectetur1 , sed do
										eiusmod tempor incididunt"Lorem ipsum dolor sit amet,
										consectetur1 sed do eiusmod tempor incididunt"Lorem ipsum
										dolor sit amet, consectetur1<br>
									</p>
									<button id="btnRL">LER MENOS</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 costumcol colborder2">
					<div class="row costumrow">
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
							<img src="image/featurporch1.jpg" alt="porsche1">
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
							<div class="featurecontant">
								<h1>LOREM IPSUM</h1>
								<p>
									"Lorem ipsum dolor sit amet, consectetur ,<br> sed do
									eiusmod tempor incididunt
								</p>
								<h2>Valor R&dollar;</h2>
								<button id="btnRM2">LEIA MAIS</button>
								<div id="readmore2">
									<h1>Nome do Carro</h1>
									<p>
										"Lorem ipsum dolor sit amet, consectetur ,<br> sed do
										eiusmod tempor incididunt <br>"Lorem ipsum dolor sit
										amet, consectetur ,<br> sed do eiusmod tempor
										incididunt"Lorem ipsum dolor sit amet, consectetur1 , sed do
										eiusmod tempor incididunt"Lorem ipsum dolor sit amet,
										consectetur1 sed do eiusmod tempor incididunt"Lorem ipsum
										dolor sit amet, consectetur1<br>
									</p>
									<button id="btnRL2">LER MENOS</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ________________________LATEST CARS SECTION _______________________-->
		<div class="latestcars">
			<h1 class="text-center">&bullet; ULTIMOS CARROS &bullet;</h1>
			<ul class="nav nav-tabs navbar-left latest-navleft">
				<li role="presentation" class="li-sortby"><span class="sortby">FILTRAR
						POR: </span></li>
				<li data-filter=".RECENT" role="presentation"><a
					href="#mostrecent" class="prcBtnR">MAIS RECENT </a></li>
				<li data-filter=".POPULAR" role="presentation"><a
					href="#mostpopular" class="prcBtnR">MAIS POPULAR </a></li>
				<li role="presentation"><a href="#" class="alphSort">ALFABÉTICA
				</a></li>
				<li data-filter=".HVALOR" role="presentation"><a href="#"
					class="prcBtnH">MAIOR PREÇO </a></li>
				<li data-filter=".LVALOR" role="presentation"><a href="#"
					class="prcBtnL">MENOR PREÇO </a></li>
				<li id="hideonmobile">
			</ul>
		</div>
		<br> <br>
		<!-- ________________________Latest Cars Image Thumbnail________________-->
		<div class="grid">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="image/car1.jpg" alt="car1">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Rolls Royce</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 1000 </h4>
								<button>LEIA MAIS</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
					<div class="txthover">
						<img src="image/car2.jpg" alt="car2">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Renault</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 900 </h4>
								<button>LEIA MAIS</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="image/car3.jpg" alt="car3">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Ford Mustang</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 3000</h4>
								<button>LEIA MAIS</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="image/car4.jpg" alt="car4">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Rover</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 1000</h4>
								<button>LEIA MAIS</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="image/car5.jpg" alt="car5">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Porche</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 1200</h4>
								<button>LEIA MAIS</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="image/car6.jpg" alt="car6">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Porche 911</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 4000</h4>
								<button>LEIA MAIS</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="image/car7.jpg" alt="car7">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Chevrolet SS</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 3000</h4>
								<button>Leia Mais</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
					<div class="txthover">
						<img src="image/car8.jpg" alt="car8">
						<div class="txtcontent">
							<div class="stars">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
							<div class="simpletxt">
								<h3 class="name">Meclaren</h3>
								<p>
									"Lorem ipsum dolor sit amet, consectetur,<br> sed do
									eiusmod tempor incididunt"
								</p>
								<h4 class="VALOR">R&dollar; 2500</h4>
								<button>Leia Mais</button>
								<br>
								<div class="wishtxt">
									<p class="paragraph1">
										Adicionar a lista de desejos <span class="glyphicon glyphicon-heart"></span>
									</p>
									<p class="paragraph2">
										Compare <span class="icon"><img
											src="image/compicon.png" alt="compicon"></span>
									</p>
								</div>
							</div>
							<div class="stars2">
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
								<div class="glyphicon glyphicon-star"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- _______________________________News Letter ____________________-->
		<div class="newslettercontent">
			<div class="leftside">
				<img src="image/border.png" alt="border">
				<h1>NOVIDADES</h1>
				<p>
					Subscribe to the COLLECTIONCARS mailing list to <br> receive
					updates on new arrivals, special offers <br> and other
					discount information.
				</p>
			</div>
			<div class="rightside">
				<img class="newsimage" src="image/newsletter.jpg" alt="newsletter">
				<input type="text" class="form-control" id="subemail"
					placeholder="EMAIL">
				<button>INSCREVA-SE</button>
			</div>
		</div>
		<!-- ______________________________________________________Bottom Menu ______________________________-->
		<div class="bottommenu">
			<div class="bottomlogo">
				<span class="dotlogo">&bullet;</span><img
					src="image/collectionlogo1.png" alt="logo1"><span
					class="dotlogo">&bullet;;</span>
			</div>
			<ul class="nav nav-tabs bottomlinks">
				<li role="presentation"><a href="#/" role="button">SOBRE
						NÓS</a></li>
				<li role="presentation"><a href="#/">CATEGORIAS</a></li>
				<li role="presentation"><a href="#/">PREORDERS</a></li>
				<li role="presentation"><a href="#/">CONTATO</a></li>
				<li role="presentation"><a href="#/">RECEBA NOSSAS NOVIDADES</a></li>
			</ul>
			<p>
				"Lorem ipsum dolor sit amet, consectetur, sed do eiusmod tempor
				incididunt <br> eiusmod tempor incididunt
			</p>
			<img src="image/line.png" alt="line"> <br>
			<div class="bottomsocial">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-google-plus"></i></a> <a href="#"><i
					class="fa fa-pinterest"></i></a>
			</div>
			<div class="footer">
				<div class="copyright">
					&copy; Copy right 2016 | <a href="#">Privacy </a>| <a href="#">Policy</a>
				</div>
				<div class="atisda">
					Designed by <a href="http://www.webdomus.net/">Web Domus Italia
						- Web Agency </a>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="source/bootstrap-3.3.6-dist/js/jquery.js"></script>
	<script type="text/javascript" src="source/js/isotope.js"></script>
	<script type="text/javascript" src="source/js/myscript.js"></script>
	<script type="text/javascript"
		src="source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
	<script type="text/javascript"
		src="source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>
</body>
</html>