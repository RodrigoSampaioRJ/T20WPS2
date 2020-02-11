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


<style type="text/css">

	.form-group.row{
		margin-bottom:10px;
	}
	
</style>


</head>
<body>

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Cadastro de Cliente</legend>

<!-- Text input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="idNome">Nome</label>  
  <div class="col-md-2">
  <input id="idNome" name="idNome" type="text" placeholder="Nome" class="form-control input-md" required="">
    
  </div>
</div>



<!-- Password input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="idSenha">Senha</label>
  <div class="col-md-2">
    <input id="idSenha" name="idSenha" type="password" placeholder="Senha" class="form-control input-md" required=""> 
  </div>
</div>

<!-- Text input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="Nome">CPF <h11>*</h11></label>  
  <div class="col-md-2">
  <input id="cpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" maxlength="11" pattern="[0-9]+$">
  </div>
</div>

<div class="form-group row"> 
  <label class="col-md-5 control-label "  for="Nome">Nascimento<h11>*</h11></label>  
  <div class="col-md-2">
  <input id="dtnasc" name="dtnasc" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="text" maxlength="10" OnKeyPress="formatar('##/##/####', this)" onBlur="showhide()">  
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group row">
  <label class="col-md-5 control-label" for="radios">Sexo <h11>*</h11></label>
  
    <label required="" class="radio-inline" for="radios-0" >
      <input name="sexo" id="sexo" value="feminino" type="radio" required>
      Feminino
    </label> 
    <label class="radio-inline" for="radios-1">
      <input name="sexo" id="sexo" value="masculino" type="radio">
      Masculino
    </label>
  
</div>

<!-- Prepended text-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext">Telefone <h11>*</h11></label>
    <div class=" col-md-2 input-group"  style="margin-bottom:10px">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
      OnKeyPress="formatar('## #####-####', this)">
    </div>
  
  <label class="col-md-5 control-label" for="prependedtext">Telefone</label>
    <div class=" col-md-2 input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" type="text" maxlength="13"  pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
      OnKeyPress="formatar('## #####-####', this)">
  </div>
 
</div>



<!-- Prepended text-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext">Email <h11>*</h11></label>
  <div class="col-md-2">
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="prependedtext" name="prependedtext" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
    </div>
  </div>
</div>  
  <!-- Search input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="CEP">CEP <h11>*</h11></label>
  <div class="col-md-2" style="margin-right:10px">
    <input id="cep" name="cep" placeholder="Apenas números" class="form-control input-md" required="" value="" type="search" maxlength="8" pattern="[0-9]+$">
  </div>
  <div class="col-md-4">
      <button type="button" class="btn btn-primary" onclick="pesquisacep($(#cep).val());">Pesquisar</button>
   </div>
</div>

<!-- Prepended text-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext">Endereço</label> 
    <div class="col-md-2 input-group">
      <span class="input-group-addon">Rua</span>
      <input id="rua" name="rua" class="form-control" placeholder="" required="" readonly="readonly" type="text">
    </div> 
</div>

<div class="form-group row">
	<label class="col-md-5 control-label" for="prependedtext"></label>
    <div class="col-md-2 input-group">
      	<span class="input-group-addon">Nº <h11>*</h11></span>
      	<input id="numero" name="numero" class="form-control" placeholder="" required=""  type="text">
    </div>
</div>

<div class="form-group row"> 
	<label class="col-md-5 control-label" for="prependedtext"></label>
    <div class="col-md-2 input-group">
      <span class="input-group-addon">Bairro</span>
      <input id="bairro" name="bairro" class="form-control" placeholder="" required="" readonly="readonly" type="text">
    </div> 
</div>


<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext"></label>
  <div class="col-md-2">
    <div class="input-group">
      <span class="input-group-addon">Cidade</span>
      <input id="cidade" name="cidade" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
    </div>
  </div>   
</div>
 
<div class="form-group row">
	<label class="col-md-5 control-label" for="prependedtext"></label>
   <div class="col-md-2">
      <div class="input-group">
      	<span class="input-group-addon">Estado</span>
      	<input id="estado" name="estado" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
      </div>
   </div>
</div>

<div class="row">
	<div class="col-md-6 control-label">
		<button type="button" class="btn btn-primary" onclick="cadastro()">Cadastrar</button>
	</div>
	
	<div class="col-md-1 control-label">
		<button type="button" class="btn btn-primary" onclick="">Limpar</button>
	</div>
</div>
	



</fieldset>
</form>

	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.js"></script>
	<script type="text/javascript" src="source/js/isotope.js"></script>
	<script type="text/javascript" src="source/js/myscript.js"></script>
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/jquery.1.11.js"></script>
	<script type="text/javascript" src="source/bootstrap-3.3.6-dist/js/bootstrap.js"></script>

</body>
</html>

<script type="text/javascript" src="js/cadastro_de_cliente.js"></script>