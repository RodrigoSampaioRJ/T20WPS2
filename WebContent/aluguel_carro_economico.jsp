<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aluguel de Carro Econômico</title>
<script type="text/javascript" src=jquery-3.4.1.js></script>
</head>
<body>

	<form action="">
	
		<h1>Carro</h1>
			<table>
			
				<tr>
					<td>Código</td>
					<td> <input style="" type="text" id="idCodigo" name="codigo" value=""></td>
				</tr>
			
				<tr>
					<td>Modelo</td>
					<td> <input style="" type="text" id="idModelo" name="modelo" value=""></td>
				</tr>
				
				<tr>
					<td>Fabricante</td>
					<td> <input type="text" id="idFabricante" name="fabricante" value=""></td>
				</tr>
				
				<tr>
					<td>Ano</td>
					<td> <input type="text" id="idAno" name="Ano" value=""></td>
				</tr>
				
				<tr>
					<td>Chassi</td>
					<td> <input type="text" id="idChassi" name="chassi" value=""></td>
				</tr>
				
				<tr>
					<td>Placa</td>
					<td> <input type="text" id="idPlaca" name="placa" value=""></td>
				</tr>
				
				<tr>
					<td>Cor</td>
					<td> <input type="text" id="idCor" name="cor" value=""></td>
				</tr>
	
			</table>
	</form>
</body>
</html>

<script type="text/javascript">

$.ajax({
	
	   type : "GET",
	   url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/41",
	   cache : false,
	   async : false,
	   dataType : 'json',
	   success : function(resultCarro){
		   
		   
		   
		   //Carro
		   $("#idCodigo").val(resultCarro.codigo);
		   $("#idModelo").val(resultCarro.modelo);
		   $("#idFabricante").val(resultCarro.fabricante);
		   $("#idAno").val(resultCarro.ano);
		   $("#idChassi").val(resultCarro.chassi);
		   $("#idPlaca").val(resultCarro.placa);
		   $("#idCor").val(resultCarro.cor);
		  
		   
	   }
	   
});

</script>