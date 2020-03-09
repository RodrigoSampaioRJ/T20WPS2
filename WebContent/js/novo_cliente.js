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


function teste(){

	
	var tel = $("#idTelefone1").val().replace(" ", "").replace("-", "");
	
	alert(tel);
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
        type : "POST",
        url : "http://localhost:9080/AluguelCarros/aluguelRest/cliente/save",
		//data : JSON.stringify(json),
		async : false,
        cache : false,
        contentType: "text/plain",
		dataType : 'text',
        success: function(retorno){
        	
        	if(retorno.status == 200){
        		load("cadastro.jsp");
        	}
        }
        
        

    });
}


function formatar(mascara, documento){

  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i);
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}