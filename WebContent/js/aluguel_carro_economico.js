$(document).ready(function() {
	


	
});


$.ajax({
	type : "GET",
	url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/lista_carros_economicos",
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
        url : "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/lista_carros_economicos",
		data : "",
		async : false,
		cache : false,
		dataType : 'json',
		success : function(resultLista) {

			var html = "<table id=idTbCarroJ class=table table-striped table-bordered table-condensed table-hover>"
			
			html += "<thead> <tr><th>Marca</th><th>Modelo</th></tr></thead>";
            html += "<tbody>";
			for(var i = 0; i < resultLista.length; i++) {

				html += "<tr>"
				+ "<td>" + resultLista[i].fabricante + "</td>"
				+  "<td>" + resultLista[i].modelo + "</td>" 
				+"</tr>";	
			}
        

			html += "</tbody>";

			$("#idTbCarro").html(html);
			
		}
	});
//seleciona os carro de certa categoria
function selecionaCarroC(catCarro){
	var urlValor = "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/b" + catCarro; 

    $.ajax({
        type : "GET",
        url : urlValor,
		data : "",
		async : false,
		cache : false,
		dataType : 'json',
		success : function(resultLista) {

			var html = "<tr id=idTbCarroJ>"
            
			for(var i = 0; i<resultLista.length; i++) {
				html += "<td>" + resultLista[i].modelo + "</td>"
				+ "<td>" + resultLista[i].ano + "</td>"
				+ "<td>" + resultLista[i].valor + "</td>";
			}

			html += "</tr>";

			$("#idListaCarros").html(html);
			
		}
	});
}
//seleciona carro por id
function selecionaCarro(idCarro){
	var urlValor = "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/" + idCarro; 

	
    $.ajax({
        type : "GET",
        url : urlValor,
		data : "",
		async : false,
		cache : false,
		dataType : 'json',
		success : function(resultValor) {
			        	 
            $("#idValorCarro").val(resultValor.valor);
			
        }
    });
     
}
//busca valor do carro
function buscaValor(){

	selecionaCarro($("#idTipoCarro").val());
	
}

function buscaPorCategoria() {
	selecionaCarroC($('#pChave').val());	

}		