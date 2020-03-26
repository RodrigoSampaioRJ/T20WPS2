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
<title>Cadastro de Carros</title>

<style type="text/css">
.panel-heading {
	font-size: 150%;
	margin-bottom: 5px;
}

.form-group.row {
	margin-bottom: 10px;
}

h11 {
	color: red;
}

#logo {
	width: 50%;
	height: 50%;
}
</style>

</head>

<body>
	<form class="form-horizontal">
		<fieldset>
			<div class="panel panel-primary">
				<div class="panel-heading">Cadastro de Carros</div>

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



						<!-- Password input-->
						<div class="form-group row">
							<label class="col-md-5 control-label" for="idFabricante">Fabricante<h11>*</h11></label>
							<div class="col-md-2">
								<input id="idFabricante" name="fabricante" type="text"
									placeholder="Fabricante" class="form-control input-md"
									required="">
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group row">
							<label class="col-md-5 control-label" for="Nome">Chassi <h11>*</h11></label>
							<div class="col-md-2">
								<input id="idChassi" name="chassi" placeholder="Chassi"
									class="form-control input-md" required="" type="text"
									maxlength="11" pattern="">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-5 control-label" for="Nome">Ano <h11>*</h11></label>
							<div class="col-md-2">
								<input id="idAno" name="ano" placeholder="Apenas números"
									class="form-control input-md" required="" type="text"
									maxlength="4" pattern="[0-9]+$">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-5 control-label" for="Nome">Placa <h11>*</h11>
							</label>
							<div class="col-md-2">
								<input id="idPlaca" name="placa" placeholder="Placa"
									class="form-control input-md" required="" type="text"
									maxlength="7">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-5 control-label" for="Nome">Categoria
								<h11>*</h11>
							</label>
							<div class="col-md-2">
								<select class="col-md-4" name="categoria" id="idCbxCategoria"
									class="w-25 p-3" style="margin: 10px" onchange=""></select>
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-5 control-label " for="Nome">Cor<h11>*</h11>
							</label>
							<div class="col-md-2">
								<input id="idCor" name="dtemissao" placeholder="Cor"
									class="form-control input-md" required="" type="text"
									maxlength="10">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-5 control-label" for="Nome">Responsavel
								<h11>*</h11>
							</label>
							<div class="col-md-2">
								<input id="idResponsavel" name="responsavel"
									placeholder="Responsável" class="form-control input-md"
									required="" type="text">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-5 control-label " for="Nome">Valor<h11>*</h11></label>
							<div class="col-md-2">
								<input id="idValor" name="valor" placeholder="Valor"
									class="form-control input-md" required="" type="text">
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 control-label">
								<button type="button" class="btn btn-success"
									onclick="salvarCarro();">Cadastrar</button>
							</div>

							<div class="col-md-1 control-label">
								<button type="button" class="btn btn-primary"
									onclick="dadosForm();">Limpar</button>
							</div>
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

<script type="text/javascript" src="js/novo_carro.js"></script>