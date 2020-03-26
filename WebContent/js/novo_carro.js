var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/"

$(document).ready(function () {



	
});


$.ajax({
	type : "GET",
	url : "http://localhost:9080/AluguelCarros/aluguelRest/categoria/lista_categorias",
	data : "",
	cache : false,
	dataType : 'json',
	success : function(resultCategoria) {


 
		var html = " <select id=idCategoriaCbx class=form-control> ";
		html += "<option value=''>Selecione</option>";

		for (var i = 0; i < resultCategoria.length; i++) {

			html += "<option value=" + resultCategoria[i].codigo + ">"
					+ resultCategoria[i].descricao + "</option>";

		}

		html += " </select> ";

		$("#idCbxCategoria").html(html);
		
	}
});


function salvarCarro() {

	var codCategoria = $('#idCbxCategoria').val();
    

    var json = {
        modelo: $('#idModelo').val(),
        fabricante: $("#idFabricante").val(),
        chassi: $('#idChassi').val(),
        ano: $('#idAno').val(),
        placa: $('#idPlaca').val(),
        categoria: {
        	
        	codCategoria: codCategoria,
        	descricao: ""
        		
        },
        cor: $("#idCor").val(),
        responsavel: $('#idResponsavel').val(),
        valor: $('#idValor').val()
    }


    $.ajax({
        type: "POST",
        url: "http://localhost:9080/AluguelCarros/aluguelRest/aluguel_carro_economico/save",
        data: JSON.stringify(json),
        async: false,
        cache: false,
        contentType: "text/plain",
        dataType: 'text',
        success: function () {

            window.location.href = "aluguel_carro_economico.jsp";
        },
        error: function () {
            alert("Erro ao cadastrar Carro!");
        }



    });
}