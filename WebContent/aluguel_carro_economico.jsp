<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aluguel de Carro Econômico</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<style>
</style>
</head>
<body>

	<form action="">
		
		<select name="tipoCarro" id="idTipoCarro" class="form-control"></select>
		<button name="botaoOk" id="idBotao" class="form-control">OK</button>
		<input  id="idValorCarro" class="form-control" value="valor"></input>
	</form>
</body>
</html>

<script type="text/javascript" src="js/aluguel_carro_economico.js">

</script>

<script type="text/javascript">

	$(document).ready(function() {

	});
	
	var elementoCBX = $('#idTipoCarro option:selected').val();
	
	
	function selecionaCarro(){
		var idCarro = elementoCBX
		
	    $.ajax({
	        type : "GET",
	        url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/lista_carros_economicos",
	        data : idCarro, 
	        dataType: 'json',
	        contentType : 'application/json',
	        success :  function(response) {
	              $("#idValorCarro").val(response.valor)
	        }
	    });
	}
	
	var botao = $('#idBotao')
	
	botao.onclick = selecionaCarro;
	
</script>


<!-- <script type="text/javascript"> --> 


<!-- // $.getJSON( "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico", function( resultCarro ) { -->
	
<!-- // 		for (var i = 0; i < resultCarro.length; i++) { -->
			
<!-- // 			$("#idCarro").val(resultCarro.modelo); -->
			
<!-- // 		} -->
<!-- // 	$("#idModelo").val(resultCarro[0]['modelo']); -->
<!-- // 	$("#idFabricante").val(resultCarro[0]['fabricante']); -->
	
<!-- // 	}); -->

<!-- // $.ajax({ -->
	
	
		
	
<!-- // 	   type : "GET", -->
<!-- // 	   url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico", -->
<!-- // 	   cache : false, -->
<!-- // 	   async : false, -->
<!-- // 	   dataType : 'json', -->
<!-- // 	   success : function(resultCarro){ -->
		   
		   
		   
<!-- // 		   //Carro -->
<!-- // 		   $("#idCodigo").val(resultCarro.codigo); -->
<!-- // 		   $("#idModelo").val(resultCarro.modelo); -->
<!-- // 		   $("#idFabricante").val(resultCarro.fabricante); -->
<!-- // 		   $("#idAno").val(resultCarro.ano); -->
<!-- // 		   $("#idChassi").val(resultCarro.chassi); -->
<!-- // 		   $("#idPlaca").val(resultCarro.placa); -->
<!-- // 		   $("#idCor").val(resultCarro.cor); -->
		   
<!-- // 	   } -->
	   
<!-- // }); -->

<!-- </script> -->