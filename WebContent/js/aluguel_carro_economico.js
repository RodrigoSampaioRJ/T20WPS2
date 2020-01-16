$(document).ready(function() {
	
	
});


$.ajax({
	type : "GET",
	url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico",
	data : "",
	cache : false,
	dataType : 'json',
	success : function(resultCarro) {

		var html = " <select id=tipoCarroCBX class=form-control> ";
		html += "<option value=''>Selecione</option>";

		for (var i = 0; i < resultCarro.length; i++) {

			html += "<option value=" + resultCarro[i].codCarro + ">"
					+ resultCarro[i].modelo + "</option>";

		}

		html += " </select> ";

		$("#idTipoCarro").html(html);

	}
});

$.ajax({
	type : "GET",
	url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico",
	data : "",
	cache : false,
	dataType : 'json',
	success : function(resultCarro) {

		var html = " <ol id=tipoCarroOL2 class=form-control> ";

		for (var i = 0; i < resultCarro.length; i++) {

			html += "<option value=" + resultCarro[i].codCarro + ">"
					+ resultCarro[i].modelo + "</option>";

		}

		html += " </select> ";

		$("#idTipoCarroOL").html(html);

	}
});
