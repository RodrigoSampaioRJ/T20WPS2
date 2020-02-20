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

<form class="form-horizontal" method="post">
<fieldset>

<!-- Form Name -->
<legend>Cadastro de Cliente</legend>

<!-- Text input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="Nome">Nome<h11>*</h11></label>  
  <div class="col-md-2">
  <input id="idNome" name="idNome" type="text" placeholder="Nome" class="form-control input-md" required="">
    
  </div>
</div>



<!-- Password input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="idSenha">Senha<h11>*</h11></label>
  <div class="col-md-2">
    <input id="idSenha" name="idSenha" type="password" placeholder="Senha" class="form-control input-md" required=""> 
  </div>
</div>

<!-- Text input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="Nome">CPF <h11>*</h11></label>  
  <div class="col-md-2">
  <input id="idCpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" maxlength="11" pattern="[0-9]+$">
  </div>
</div>

<div class="form-group row">
  <label class="col-md-5 control-label" for="Nome">RG <h11>*</h11></label>  
  <div class="col-md-2">
  <input id="idRg" name="rg" placeholder="Apenas números" class="form-control input-md" required="" type="text" maxlength="9" pattern="[0-9]+$">
  </div>
</div>

<div class="form-group row">
  <label class="col-md-5 control-label" for="Nome">Orgão Emissor <h11>*</h11></label>  
  <div class="col-md-2">
  <input id="idOrgao" name="orgao" placeholder="Emissor" class="form-control input-md" required="" type="text">
  </div>
</div>

<div class="form-group row"> 
  <label class="col-md-5 control-label "  for="Nome">Data de Emissão<h11>*</h11></label>  
  <div class="col-md-2">
  <input id="idDtEmissao" name="dtemissao" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="text" maxlength="10" OnKeyPress="formatar('##/##/####', this)" onBlur="showhide()">  
  </div>
</div>

<div class="form-group row">
  <label class="col-md-5 control-label" for="Nome">Habilitação <h11>*</h11></label>  
  <div class="col-md-2">
  <input id="idHabilitacao" name="habilitacao" placeholder="Apenas números" class="form-control input-md" required="" type="text" maxlength="11" pattern="[0-9]+$">
  </div>
</div>

<div class="form-group row"> 
  <label class="col-md-5 control-label "  for="Nome">Nascimento<h11>*</h11></label>  
  <div class="col-md-2">
  <input id="idDtNasc" name="dtnasc" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="text" maxlength="10" OnKeyPress="formatar('##/##/####', this)" onBlur="showhide()">  
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group row">
  <label class="col-md-5 control-label" for="radios">Sexo <h11>*</h11></label>
  
    <label required="" class="radio-inline" for="radios-0" >
      <input name="sexo" id="idSexo" value="feminino" type="radio" required>
      Feminino
    </label> 
    <label class="radio-inline" for="radios-1">
      <input name="sexo" id="idSexo" value="masculino" type="radio">
      Masculino
    </label>
  
</div>

<!-- Prepended text-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext">Telefone <h11>*</h11></label>
    <div class=" col-md-2 input-group"  style="margin-bottom:10px">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="idTelefone1" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
      OnKeyPress="formatar('## #####-####', this)">
    </div>
  
  <label class="col-md-5 control-label" for="prependedtext">Telefone</label>
    <div class=" col-md-2 input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="idTelefone2" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" type="text" maxlength="13"  pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
      OnKeyPress="formatar('## #####-####', this)">
  </div>
 
</div>



<!-- Prepended text-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext">Email <h11>*</h11></label>
  <div class="col-md-2">
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="idEmail" name="prependedtext" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
    </div>
  </div>
</div>  
  <!-- Search input-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="CEP">CEP <h11>*</h11></label>
  <div class="col-md-2" style="margin-right:10px">
    <input id="idCep" name="cep" placeholder="Apenas números" class="form-control input-md" required="" value="" type="search" maxlength="8" pattern="[0-9]+$">
  </div>
  <div class="col-md-4">
      <button type="button" class="btn btn-primary" onclick="pesquisacep();">Pesquisar</button>
   </div>
</div>

<!-- Prepended text-->
<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext">Endereço</label> 
    <div class="col-md-2 input-group">
      <span class="input-group-addon">Rua</span>
      <input id="idRua" name="rua" class="form-control" placeholder="" required="" readonly="readonly" type="text">
    </div> 
</div>

<div class="form-group row">
	<label class="col-md-5 control-label" for="prependedtext"></label>
    <div class="col-md-2 input-group">
      	<span class="input-group-addon">Nº <h11>*</h11></span>
      	<input id="idNumero" name="numero" class="form-control" placeholder="Número" required=""  type="text">
    </div>
</div>

<div class="form-group row">
	<label class="col-md-5 control-label" for="prependedtext"></label>
    <div class="col-md-2 input-group">
      	<span class="input-group-addon">Complemento <h11>*</h11></span>
      	<input id="idComplemento" name="complemento" class="form-control" placeholder="Complemento" required=""  type="text">
    </div>
</div>


<div class="form-group row"> 
	<label class="col-md-5 control-label" for="prependedtext"></label>
    <div class="col-md-2 input-group">
      <span class="input-group-addon">Bairro</span>
      <input id="idBairro" name="bairro" class="form-control" placeholder="" required="" readonly="readonly" type="text">
    </div> 
</div>


<div class="form-group row">
  <label class="col-md-5 control-label" for="prependedtext"></label>
  <div class="col-md-2">
    <div class="input-group">
      <span class="input-group-addon">Cidade</span>
      <input id="idCidade" name="cidade" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
    </div>
  </div>   
</div>
 
<div class="form-group row">
	<label class="col-md-5 control-label" for="prependedtext"></label>
   <div class="col-md-2">
      <div class="input-group">
      	<span class="input-group-addon">Estado</span>
      	<input id="idUf" name="estado" class="form-control" placeholder="" required=""  readonly="readonly" type="text">
      </div>
   </div>
</div>

<div class="row">
	<div class="col-md-6 control-label">
		<button type="button" class="btn btn-primary" onclick="teste();">Cadastrar</button>
	</div>
	
	<div class="col-md-1 control-label">
		<button type="button" class="btn btn-primary" onclick="dadosForm();">Limpar</button>
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

<script type="text/javascript" src="js/novo_cliente.js"></script>


<script type="text/javascript">

$(document).ready(function() {
      
	function limpa_formulário_cep() {
             // Limpa valores do formulário de cep.
	         $("#idRua").val("");
	         $("#idBairro").val("");
	         $("#idCidade").val("");
	         $("#idUf").val("");
                
}
            
            //Quando o campo cep perde o foco.
            $("#idCep").blur(function() {

                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#idRua").val("...");
                        $("#idBairro").val("...");
                        $("#idCidade").val("...");
                        $("#idUf").val("...");            

                        //Consulta o webservice viacep.com.br/
                        $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#idRua").val(dados.logradouro);
                                $("#idBairro").val(dados.bairro);
                                $("#idCidade").val(dados.localidade);
                                $("#idUf").val(dados.uf);
                            } //end if.
                            else {
                                //CEP pesquisado não foi encontrado.
                                limpa_formulário_cep();
                                alert("CEP não encontrado !");
                            }
                        });
                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido !");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
                }
            });
        });

</script>