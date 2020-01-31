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

id="#dropdownMenu1"
//seleciona os carro de certa categoria
function selecionaCarro(catCarro){
	var urlValor = "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/busca=" + catCarro; 

	
    $.ajax({
        type : "GET",
        url : urlValor,
		data : "",
		async : false,
		cache : false,
		dataType : 'json',
		success : function(resultLista) {
			var html = "<ol id=listaCarroOL>"
            
			for(var i = 0; i<resultLista.length; i++) {
				html += "<li value=" + resultCarro[i].codCarro + ">"
				+ resultCarro[i].modelo + "</li>";
			}

			html += "</ol>";

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
	selecionaCarro($("#dropdownMenu1").val());
	alert($("#mydd").val())

}

