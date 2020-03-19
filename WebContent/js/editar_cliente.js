var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/cliente/"


$(document).ready(function () {

    function queryObj() {
        var result = {}, keyValuePairs = location.search.slice(1).split("&");
        keyValuePairs.forEach(function (keyValuePair) {
            keyValuePair = keyValuePair.split('=');
            result[decodeURIComponent(keyValuePair[0])] = decodeURIComponent(keyValuePair[1]) || '';
        });
        return result;
    }
    var parametros = queryObj();

    console.log(parametros);

    if(parametros.tipo == "editar"){

        findClienteById(parametros.id);

    }

})

function findClienteById(id) {

	$.ajax({
		type: "GET",
		url: baseURL + id,
		data: "",
		async: false,
		cache: false,
		dataType: 'json',
		success: function(retornoCliente) {

            $('#idNome').val(retornoCliente.pessoaFisica.nome);
            $('#idCpf').val(retornoCliente.pessoaFisica.documentoPessoaFisica.cpf);
            var data = new Date(retornoCliente.pessoaFisica.dtNascimento);
            data = data.toLocaleDateString('pt-BR');
            $('#idDtNasc').val(data);
            $("#idTelefone1").val(retornoCliente.pessoaFisica.telefone.numero);
            $("#idEmail").val(retornoCliente.pessoaFisica.email);
            $("#idHabilitacao").val(retornoCliente.pessoaFisica.documentoPessoaFisica.habilitacao);
            $("#idRg").val(retornoCliente.pessoaFisica.documentoPessoaFisica.rg);
            $("#idOrgao").val(retornoCliente.pessoaFisica.documentoPessoaFisica.orgaoEmissor);
            $("#idCep").val(retornoCliente.pessoaFisica.endereco.cep);
            $("#idCidade").val(retornoCliente.pessoaFisica.endereco.cidade);
            $("#idBairro").val(retornoCliente.pessoaFisica.endereco.bairro);
            $("#idNumero").val(retornoCliente.pessoaFisica.endereco.numero);
            $("#idRua").val(retornoCliente.pessoaFisica.endereco.logradouro);
            $("#idUf").val(retornoCliente.pessoaFisica.endereco.estado)
            // var nome= $('#idNome').val();
// var senha= $('#idSenha').val();
// var cpf= $('#idCpf').val();
// var dtNascimento= $('#idNascimento').val();
// var  sexo= $('#idSexo').val();
// var telefone= $("#idTelefone1").val();
// var telefone2= $("#idTelefone2").val();
// var email= $("#idEmail").val();
// var cep= $("#idCep").val();
// var logradouro= $("#idRua").val();
// var numero= $("#idNumero").val();
// var bairro= $("#idBairro").val();
// var complemento= $("#idComplemento").val();
// var cidade= $("#idCidade").val();
// var uf= $("#idUf").val();
// var habilitacao= $("#idHabilitacao").val();
// var rg= $("#idRg").val();
// var orgaoEmissor= $("#idOrgao").val();
// var dtEmissao= $("#idDtEmissao").val();
		}

	});
}