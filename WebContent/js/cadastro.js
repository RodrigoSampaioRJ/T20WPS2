var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/cliente/"

$.ajax({
	type: "GET",
	url: "http://localhost:9080/AluguelCarros/aluguelRest/cliente/lista",
	data: "",
	async: false,
	cache: false,
	dataType: 'json',
	success: function (resultLista) {

		var html = "<table id=idTbClientesJ class=table table-striped table-bordered table-condensed table-hover>"

		html += "<thead> <tr><th>Nome</th><th>Email</th><th>Editar</th><th>Excluir</th></tr></thead>";
		html += "<tbody>";
		for (var i = 0; i < resultLista.length; i++) {

			html += "<tr>"
				+ "<td>" + resultLista[i].nome + "</td>"
				+ "<td>" + resultLista[i].email + "</td>"
				+ "<td>" + "<i class=fas fa-trash-alt fa-2x></i>" + "</td>"
				+ "<td>" + "<i class=fas fa-edit fa-2x></i>" + "</td>"
				+ "</tr>";
		}


		html += "</tbody>";

		$("#idTbClientes").html(html);

	}
});

function findClienteByName() {

	var nome = $('#idNome').val();

	$.ajax({
		type: "GET",
		url: baseURL + "search="+nome,
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


