<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="source/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="source/font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="style/slider.css">
<link rel="stylesheet" type="text/css" href="style/mystyle.css">
<script defer src="source/fontawesome-free-5.12.1-web/js/all.js"></script>
<meta charset="ISO-8859-1">
<title>Editar Carro</title>

<style type="text/css">
.panel-heading {
	font-size: 150%;
	margin-bottom: 5px;
}

.form-group.row {
	margin-bottom: 10px;
}

.panel-heading {
	font-size: 150%;
}

h11 {
	color: red;
}
</style>

</head>

<body>

	<form class="form-horizontal">
		<fieldset>
			<div class="panel panel-primary">
				<div class="panel-heading">Editar Carro</div>
			</div>
			<div class="panel-body">
				<div class="form-group">
					<!-- Form Name -->

					<!-- Text input-->
					<div class="form-group row">
						<label class="col-md-5 control-label" for="Nome">Modelo<h11>*</h11></label>
						<div class="col-md-2">
							<input id="idModelo" name="modelo" type="text"
								placeholder="Modelo" class="form-control input-md" required="">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group row">
						<label class="col-md-5 control-label" for="Nome">Fabricante
							<h11>*</h11>
						</label>
						<div class="col-md-2">
							<input id="idFabricante" name="fabricante"
								placeholder="Fabricante" class="form-control input-md"
								required="" type="text">
						</div>
					</div>

					<div class="form-group row">
						<label class="col-md-5 control-label" for="Nome">Valor <h11>*</h11></label>
						<div class="col-md-2">
							<input id="idValor" name="valor" placeholder="Apenas números"
								class="form-control input-md" required="" type="text"
								maxlength="9" pattern="[0-9]+$">
						</div>
					</div>


					<div class="form-group row">
						<label class="col-md-5 control-label" for="Nome">Cor <h11>*</h11>
						</label>
						<div class="col-md-2">
							<input id="idCor" name="habilitacao"
								placeholder="Apenas números" class="form-control input-md"
								required="" type="text" maxlength="11" pattern="[0-9]+$">
						</div>
					</div>
					<div class="row">
						
						<div class="control-label">
							<div class="col-md-5"></div>
							<button type="button" class="btn btn-success col-md-1" onclick="salvarCarro();">Salvar</button>
						</div>

						
							<div class="col-md-1"></div>
							<button type="button" class="btn btn-primary col-md"
								onclick="dadosForm();">Voltar</button>
						
					</div>
		</fieldset>
	</form>


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

<script type="text/javascript" src="js/editar_carro.js"></script>