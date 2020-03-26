var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/cliente/"

$(document).ready(function () {
	
	listarClientes();
	
	$('body').on('click', 'a[id^=idBtnDelete_]', function(){
		
		var id = $(this).attr("id").substring(12);
		//alert('Entrei exclusao ='+ id);
		
		if (confirm("Deseja excluir esse registro ?")) {

			$.ajax({
				type: "DELETE",
				url: "http://localhost:9080/AluguelCarros/aluguelRest/cliente/delete/" + id,
				data: "",
				async: false,
				cache: false,
				success: function () {

					alert('Usuario excluido com sucesso!');
					//refresh();
				}
			});
		}
	});
	
	$('body').on('click', 'a[id^=idBtnEditar_]', function () {

		var id = $(this).attr("id").substring(12);
		
		window.location.href = "aluguel_carro_economico.jsp";
		
		//window.location.assign = "editar_cliente.jsp";
		
	});

	
});



function listarClientes(){

	$.ajax({
		type: "GET",
		url: "http://localhost:9080/AluguelCarros/aluguelRest/cliente/lista",
		data: "",
		async: false,
		cache: false,
		dataType: 'json',
		success: function (resultLista) {
	
			var html = "<table id=idTbClientesJ class=table table-striped table-bordered table-condensed table-hover>"
	
			html += "<thead> <tr><th>Nome</th><th>Telefone</th><th>CPF</th><th>Habilitacao</th><th>Email</th><th>Prova</th><th>Editar</th><th>Excluir</th></tr></thead>";
			html += "<tbody>";
			for (var i = 0; i < resultLista.length; i++) {
	
				html += "<tr>"
					+ "<td>" + resultLista[i].pessoaFisica.nome + "</td>"
					+ "<td>" + resultLista[i].pessoaFisica.telefone.numero + "</td>"
					+ "<td>" + resultLista[i].pessoaFisica.documentoPessoaFisica.cpf + "</td>"
					+ "<td>" + resultLista[i].pessoaFisica.documentoPessoaFisica.habilitacao + "</td>"
					+ "<td>" + resultLista[i].pessoaFisica.email + "</td>"
					+ "<td>" + resultLista[i].pessoaFisica.prova + "</td>"
					+ "<td>" + "<a id=idBtnEditar_"+ resultLista[i].codCliente +" href=editar_cliente.jsp?tipo=editar&id="+resultLista[i].codCliente+"><b><i class=\"fas fa-edit fa-2x\"></i></b></a>" + "</td>"
					+ "<td>" + "<a id=idBtnDelete_"+ resultLista[i].codCliente +" href=\"\"><b><i class=\"fas fa-trash-alt fa-2x\"></i></b></a>" + "</td>"
					+ "</tr>";
			};
	
			html += "</tbody>";
	
			$("#idTbClientes").html(html);
	
		}
	});
}

function findClienteByName() {

	var nome = $('#idNome').val();

	$.ajax({
		type: "GET",
		url: baseURL + "search=" + nome,
		data: "",
		async: false,
		cache: false,
		dataType: 'json',
		success: function (resultGET) {

			var html = "<table id=idTbClientesJ class=table table-striped table-bordered table-condensed table-hover>"

			html += "<thead> <tr><th>Nome</th><th>Email</th><th>Editar</th><th>Excluir</th></tr></thead>";
			html += "<tbody>";
			for (var i = 0; i < resultGET.length; i++) {

				html += "<tr>"
					+ "<td>" + resultGET[i].nome + "</td>"
					+ "<td>" + resultGET[i].email + "</td>"
					+ "<td>" + "<i class=fas fa-trash-alt fa-2x></i>" + "</td>"
					+ "<td>" + "<i class=fas fa-edit fa-2x></i>" + "</td>"
					+ "</tr>";
			}


			html += "</tbody>";

			$("#idTbClientes").html(html);

		}
	});
}
