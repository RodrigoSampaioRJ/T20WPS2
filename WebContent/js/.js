 $.ajax({
        type : "GET",
        url : "http://localhost:9080/AluguelCarros/aluguelRest/cliente/lista",
		data : "",
		async : false,
		cache : false,
		dataType : 'json',
		success : function(resultLista) {

			var html = "<table id=idTbClientesJ class=table table-striped table-bordered table-condensed table-hover>"
			
			html += "<thead> <tr><th>Nome</th><th>Email</th><th>Editar</th><th>Excluir</th></tr></thead>";
            html += "<tbody>";
			for(var i = 0; i < resultLista.length; i++) {

				html += "<tr>"
				+ "<td>" + resultLista[i].nome + "</td>"
				+  "<td>" + resultLista[i].email + "</td>" 
				+ "<td>" + "<i class=fas fa-trash-alt></i>" + "</td>"
				+"</tr>";	
			}
        

			html += "</tbody>";

			$("#idTbClientes").html(html);
			
		}
	});