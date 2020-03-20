var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/cliente/"
var idCliente;

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

    if (parametros.tipo == "editar") {

        idCliente = parametros.id;
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
        success: function (retornoCliente) {

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
            $("#idComplemento").val(retornoCliente.pessoaFisica.endereco.complemento);

        }

    });
}

function salvarCliente() {


    var tel = $("#idTelefone1").val().replace(" ", "").replace("-", "");

    var json = {
        nome: $('#idNome').val(),
        email: $("#idEmail").val(),
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
        documentoPessoaFisica: {
            cpf: $('#idCpf').val(),
            rg: $("#idRg").val(),
            habilitacao: $("#idHabilitacao").val()
        }
    }
    if (confirm("Deseja atualizar esse registro?")) {
        $.ajax({
            type: "PUT",
            url: baseURL + "update/" + idCliente,
            data: JSON.stringify(json),
            async: false,
            cache: false,
            contentType: "text/plain",
            dataType: 'text',
            success: function () {

                window.location.href = "cadastro.jsp";
            },
            error: function () {
                alert("Erro ao editar cliente!");
            }

        });
    }
}