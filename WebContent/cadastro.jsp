<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="source/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="source/font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="style/slider.css">
<link rel="stylesheet" type="text/css" href="style/mystyle.css">
<script defer src="source/fontawesome-free-5.12.1-web/js/all.js"></script>


<style type="text/css">

	#idb{
		margin: 0 auto;
	}
	.form-group.row{
		margin-bottom:10px;
	}
	a:link {
		color: black; 
	}
	a:visited {
    	color: black;
	}
	button{
		padding: 2px;
		margin-left: 2px;
	}

	
	
</style>
</head>
<body>


<div class="form-group row">
	<div class="col-md-6">
		<a href="novo_cliente.jsp"><button type="button" class="btn btn-primary" >Novo Cliente</button></a>
	</div>      
</div>

<div class="form-group row">
	<div class="col-md-2">
	 	<input id="idNome" name="idNome" type="text" placeholder="Nome" class="form-control input-md">
	</div>
	<div class="col-md-4">
		<button type="button" class="btn btn-primary" onclick="findClienteByName();">Pesquisar</button>
	</div>     
	
</div>

<div class="form-group-row">
	<div class="col-md-5">
		<table id="idTbClientes"></table>
	</div>
	
</div>

<!-- 	<input type="button" onclick="teste();" value="teste"> -->
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.js"></script>
	<script type="text/javascript" src="source/js/isotope.js"></script>
	<script type="text/javascript" src="source/js/myscript.js"></script>
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>   
   
   
</body>
</html>

<script type="text/javascript" src="js/cadastro1.js"></script>