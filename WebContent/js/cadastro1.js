
var dados = [];

$.ajax({
	type: "GET",
	url: "http://localhost:9080/AluguelCarros/aluguelRest/cliente/lista",
	data: "",
	async: false,
	cache: false,
	dataType: 'json',
	success: function (resultLista) {

		for (var i = 0; i < resultLista.length; i++) {

			dados[i] = resultLista[i];

		}

	}
});

$(document).ready(function () {

	var $tabela = $('<table>');

	$tabela.attr({ class: 'table table-striped table-bordered table-condensed table-hover' });

	$tabela.append(montarThead());

	$tabela.append(montarConteudo());

	$('#idTbClientes').html($tabela);

	$('body').on('click', '.btnExcluir', function (e) {

		var id = $(this).parent().data('id');

		if (confirm("Deseja excluir esse registro ?")) {

			$.ajax({
				type: "DELETE",
				url: "http://localhost:9080/AluguelCarros/aluguelRest/cliente/delete/" + id,
				data: "",
				async: false,
				cache: false,
				//dataType: 'json',
				success: function () {


					alert('Usuario excluido com sucesso!');
					refresh();

				}
			});
		}
	});

	$('body').on('click', '.btnEditar', function (e) {

		var id = $(this).parent().data('id');

		window.location.href = "editar_cliente.jsp?tipo=editar&id=" + id;

	});

})

function teste() {
	console.log(dados);

}

function montarThead() {

	var $thead = $('<thead>');

	var $tr = $('<tr>').append($('<th>#</th>')).append($('<th>Nome</th>')).append($('<th>E-mail</th>')).append($('<th>CPF</th>')).append($('<th>Habilitacao</th>')).append($('<th>Telefone</th>')).append($('<th>Cidade</th>')).append($('<th>Estado</th>')).append($('<th><i class="fas fa-eraser"></i></th>')).append($('<th><i class="fas fa-pen-square"></i></th>'));

	$thead.html($tr);

	return $thead;
}

function montarConteudo() {

	var $tbody = $('<tbody>');

	for (var i = 0; i < dados.length; i++) {

		var $linha = $('<tr>');

		$linha.data('id', dados[i].codCliente);

		$linha.append($('<td>' + (i + 1) + '</td>'));

		$linha.append($('<td>' + dados[i].pessoaFisica.nome + '</td>'));
		
		$linha.append($('<td>' + dados[i].pessoaFisica.email + '</td>'));

		$linha.append($('<td>' + dados[i].pessoaFisica.documentoPessoaFisica.cpf + '</td>'));

		$linha.append($('<td>' + dados[i].pessoaFisica.documentoPessoaFisica.habilitacao + '</td>'));

		$linha.append($('<td>' + dados[i].pessoaFisica.telefone.numero + '</td>'));

		$linha.append($('<td>' + dados[i].pessoaFisica.endereco.cidade + '</td>'));

		$linha.append($('<td>' + dados[i].pessoaFisica.endereco.estado + '</td>'));


		var $botaoExcluir = $('<input>').attr({ id: 'idD', type: 'button', name: 'btn1', class: 'btnExcluir far fa-trash-alt fa-2x' });

		$linha.append($botaoExcluir);

		var $botaoEditar = $('<input>').attr({id:'idE', type: 'button', name:'btn2', class:'btnEditar far fa-edit fa-2x'});

		$linha.append($botaoEditar);

		$tbody.append($linha);

	}

	return $tbody;

}

function refresh() {
	location.reload(true);
}