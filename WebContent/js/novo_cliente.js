var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/cliente/"


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

function salvarCliente() {


    var tel = $("#idTelefone1").val().replace(" ", "").replace("-", "");

    var json = {
        nome: $('#idNome').val(),
        email: $("#idEmail").val(),
        senha: $('#idSenha').val(),
        endereco: {
            logradouro: $("#idRua").val(),
            numero: $("#idNumero").val(),
            complemento: $("#idComplemento").val(),
            bairro: $("#idBairro").val(),
            cidade: $("#idCidade").val(),
            uf: $("#idUf").val(),
            cep: $("#idCep").val()
        },
        telefone: {
            numero: tel
        },
        dtNascimento: $('#idDtNasc').val(),
        sexo: $("input[name='sexo']:checked").val(),
        documentoPessoaFisica: {
            cpf: $('#idCpf').val(),
            rg: $("#idRg").val(),
            dtEmissaoRG: $("#idDtEmissao").val(),
            orgaoEmissor: $("#idOrgao").val(),
            habilitacao: $("#idHabilitacao").val()
        }
    }




    $.ajax({
        type: "POST",
        url: "http://localhost:9080/AluguelCarros/aluguelRest/cliente/save",
        data: JSON.stringify(json),
        async: false,
        cache: false,
        contentType: "text/plain",
        dataType: 'text',
        success: function () {

            window.location.href = "cadastro.jsp";
        },
        error: function () {
            alert("Erro ao cadastrar cliente!");
        }



    });
}


function formatar(mascara, documento) {

    var i = documento.value.length;
    var saida = mascara.substring(0, 1);
    var texto = mascara.substring(i);

    if (texto.substring(0, 1) != saida) {
        documento.value += texto.substring(0, 1);
    }

}

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