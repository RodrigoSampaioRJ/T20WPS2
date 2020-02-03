<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Aluguel de Carro Econômico</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
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
					<li class="active"><a href="index.jsp">INICIO</a></li>
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
							<li><a href="aluguel_carro_economico.jsp">Econômicos</a></li>
							<li><a href="aluguel_carro_esportivo.jsp">Esportivos</a></li>
							<li><a href="aluguel_carro_utilitario.jsp">Utilitários</a></li>
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
								placeholder="Palavra Chave" id="pChave">
						</div>
					</form>
					<ul class="nav navbar-nav navbarborder">
						<li class="li-category"><a
							class="btn  dropdown-toggle btn-costume" id="dropdownMenu1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Categoria<span
								class="glyphicon glyphicon-chevron-down downicon"></span></a>
							<ul class="dropdown-menu" id="mydd">
								<li value="economico"><a href="#" >Econômicos</a></li>
								<li value="esportivo"><a href="#" >Esportivos</a></li>
								<li value="utilitario"><a href="#" >Utilitários</a></li>
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
							<input type="button" class="searchbutton" onclick="buscaPorCategoria();">
								<span class="glyphicon glyphicon-search "></span>
						</li>
					</ul>

				</div>
			</nav>
		</div>
	</div>

	<form action="">
	
		<table id="idTbCarro" class="table table-sm table-bordered table-condensed table-hover"></table>
		
		<select name="tipoCarro" id="idTipoCarro" class="w-25 p-3" style ="margin: 10px" onchange="buscaValor();"></select>
		<span name="textoValor"> Valor da diária = </span>
	    <input type="text"  id="idValorCarro" class="w-25 p-3" style ="margin: 10px" >
	    <a href="cadastro_de_cliente.jsp" target="_self"><input type="button" id="idButtonOk" value="OK" onclick=></a>
	    
	</form>
	
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.js"></script>
	<script type="text/javascript" src="source/js/isotope.js"></script>
	<script type="text/javascript" src="source/js/myscript.js"></script>
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>
</body>
</html>

<script type="text/javascript" src="js/aluguel_carro_economico.js"></script>

