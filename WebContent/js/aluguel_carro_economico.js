$(document).ready(function() {
	

	$('body').on('click', 'a[id^=idBtnDelete_]', function(){
		
		var id = $(this).attr("id").substring(12);
		//alert('Entrei exclusao ='+ id);
		
		if (confirm("Deseja excluir esse registro ?")) {

			$.ajax({
				type: "DELETE",
				url: "http://localhost:9080/AluguelCarros/aluguelRest/carro/delete/" + id,
				data: "",
				async: false,
				cache: false,
				success: function () {

					alert('Carro excluído com sucesso!');
					//refresh();
				}
			});
		}
	});
	
	$('body').on('click', 'a[id^=idBtnEditar_]', function () {

		var id = $(this).attr("id").substring(12);
		
		window.location.href = "aluguel_carro_economico.jsp";
		
		
		
	});

	
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

		$("#idCbxCarro").html(html);
		
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
			
			html += "<thead> <tr><th>Marca</th><th>Modelo</th><th>Cor</th><th>Ano</th><th>Chassi</th><th>Placa</th><th>Editar</th><th>Excluir</th></tr></thead>";
            html += "<tbody>";
			for(var i = 0; i < resultLista.length; i++) {

				html += "<tr>"
				+ "<td>" + resultLista[i].fabricante + "</td>"
				+ "<td>" + resultLista[i].modelo + "</td>" 
				+ "<td>" + resultLista[i].cor + "</td>" 
				+ "<td>" + resultLista[i].ano + "</td>" 
				+ "<td>" + resultLista[i].chassi + "</td>" 
				+ "<td>" + resultLista[i].placa + "</td>" 
				+ "<td>" + "<a id=idBtnEditar_"+ resultLista[i].codCarro +" href=editar_carro.jsp?tipo=editar&id="+resultLista[i].codCarro+"><b><i class=\"fas fa-edit fa-2x\"></i></b></a>" + "</td>"
				+ "<td>" + "<a id=idBtnDelete_"+ resultLista[i].codCarro +" href=\"\"><b><i class=\"fas fa-trash-alt fa-2x\"></i></b></a>" + "</td>"
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