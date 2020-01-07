<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Cliente Aluguel</title>
<script type="text/javascript" src=jquery-3.4.1.js></script>
</head>
<body>

	<form action="">
	
	<h1>Cliente</h1>
		<table>
		
			<tr>
				<td>Código</td>
				<td> <input style="" type="text" id="idCodigo" name="codigo" value=""></td>
			</tr>
		
			<tr>
				<td>Nome</td>
				<td> <input style="" type="text" id="idNome" name="nome" value=""></td>
			</tr>
			
			<tr>
				<td>Data Nascimento</td>
				<td> <input type="text" id="idDataNascimento" name="dataNascimento" value=""></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td> <input type="text" id="idEmail" name="email" value=""></td>
			</tr>
			
			<tr>
				<td>Sexo</td>
				<td> <input type="text" id="idSexo" name="sexo" value=""></td>
			</tr>

		</table>
		
		<h1>Documentos</h1>
		
		<table>
			
			<tr>
				<td>CPF</td>
				<td> <input type="text" id="idCpf" name="cpf" value=""></td>
			</tr>
			
			<tr>
				<td>Data Emissao RG</td>
				<td> <input type="text" id="idDataEmissao" name="dataEmissao" value=""></td>
			</tr>
			
			<tr>
				<td>Orgão Emissor</td>
				<td> <input type="text" id="idOrgaoEmissor" name="orgaoEmissor" value=""></td>
			</tr>
			
			<tr>
				<td>RG</td>
				<td> <input type="text" id="idRg" name="rg" value=""></td>
			</tr>
		
		
		</table>
		
		<h1>Endereço</h1>
		
		
		<table>
		
			<tr>
				<td>Logradouro</td>
				<td> <input style="" type="text" id="idLogradouro" name="logradouro" value=""></td>
			</tr>
			
			<tr>
				<td>Numero</td>
				<td> <input type="text" id="idNumero" name="numero" value=""></td>
			</tr>
			
			<tr>
				<td>Complemento</td>
				<td> <input type="text" id="idComplemento" name="complemento" value=""></td>
			</tr>
			
			<tr>
				<td>Bairro</td>
				<td> <input type="text" id="idBairro" name="bairro" value=""></td>
			</tr>
			
			<tr>
				<td>Cep</td>
				<td> <input type="text" id="idCep" name="cep" value=""></td>
			</tr>
			
			<tr>
				<td>UF</td>
				<td> <input type="text" id="idUF" name="UF" value=""></td>
			</tr>
		</table>
	
	</form>

</body>
</html>


<script type="text/javascript">

$.ajax({
	
	   type : "GET",
	   url : "http://localhost:9080/AluguelCarros/aluguelRest/cliente/4",
	   cache : false,
	   async : false,
	   dataType : 'json',
	   success : function(resultCliente){
		   
		   
		   
		   //Cliente
		   $("#idCodigo").val(resultCliente.pessoaFisica.codigo);
		   $("#idNome").val(resultCliente.pessoaFisica.nome);
		   $("#idDataNascimento").val(resultCliente.pessoaFisica.dtNascimento);
		   $("#idEmail").val(resultCliente.pessoaFisica.email);
		   $("#idSexo").val(resultCliente.pessoaFisica.sexo);
		   //Documentos
		   $("#idCpf").val(resultCliente.pessoaFisica.documentoPessoaFisica.cpf);
		   $("#idRg").val(resultCliente.pessoaFisica.documentoPessoaFisica.rg);
		   $("#idDataEmissao").val(resultCliente.pessoaFisica.documentoPessoaFisica.dtEmissaoRG);
		   $("#idOrgaoEmissor").val(resultCliente.pessoaFisica.documentoPessoaFisica.orgaoEmissor);
		   $("#idRg").val(resultCliente.pessoaFisica.documentoPessoaFisica.rg);
		   //Endereço
		   $("#idComplemento").val(resultCliente.pessoaFisica.endereco.complemento);
		   $("#idNumero").val(resultCliente.pessoaFisica.endereco.numero);
		   $("#idLogradouro").val(resultCliente.pessoaFisica.endereco.logradouro);
		   $("#idBairro").val(resultCliente.pessoaFisica.endereco.bairro);
		   $("#idCep").val(resultCliente.pessoaFisica.endereco.cep);
		   $("#idUF").val(resultCliente.pessoaFisica.endereco.estado);
		   
	   }
	   
});

</script>



