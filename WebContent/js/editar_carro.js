var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/"

var idCarro;

$(document).ready(function() {

	function queryObj() {
		var result = {}, chaveValorP = location.search.slice(1).split("&");
		chaveValorP.forEach(function(chaveValor) {
			chaveValor = chaveValor.split('=');
			result[decodeURIComponent(chaveValor[0])] = decodeURIComponent(chaveValor[1])|| '';
			});
			return result;
	}
	var parametros = queryObj();

	console.log(parametros);

	if (parametros.tipo == "editar") {
		
		idCarro = parametros.id;
		findCarroById(parametros.id);
	}

})
function salvarCarro() {

	var codCategoria = $('#idCbxCategoria').val();

	var json = {
		modelo : $('#idModelo').val(),
		fabricante : $("#idFabricante").val(),
		cor : $("#idCor").val(),
		valor : $('#idValor').val()
	}
	if (confirm("Deseja atualizar esse carro?")) {
		$.ajax({
			type : "PUT",
			url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/update" + idCarro,
			data : JSON.stringify(json),
			async : false,
			cache : false,
			contentType : "text/plain",
			dataType : 'text',
			success : function() {
	
				window.location.href = "aluguel_carro_economico.jsp";
			},
			error : function() {
				alert("Erro ao editar carro!");
			}
	
		});
	}
}
function findCarroById(id) {

	$.ajax({
		type : "GET",
		url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/" + id,
		data : "",
		async : false,
		cache : false,
		dataType : 'json',
		success : function(retornoCarro) {

			$("#idModelo").val(retornoCarro.modelo);
			$("#idFabricante").val(retornoCarro.fabricante);
			$("#idValor").val(retornoCarro.valor);
			$("#idCor").val(retornoCarro.cor);

		}

	});
}