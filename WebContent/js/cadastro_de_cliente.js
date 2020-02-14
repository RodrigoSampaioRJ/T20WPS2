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


function cadastro()  {

    
     $.ajax({
        type : "POST",
        url : baseURL+"cadastro",
		data : nome+","+senha+","+cpf+","+rg+","+habilitacao+","+orgaoEmissor+","+dtEmissao+","+dtNascimento+","+sexo+","+telefone+","+telefone2+","+email+","+
        cep+","+logradouro+","+numero+","+bairro+","+complemento+","+cidade+","+uf,
		async : false,
		cache : false,
		dataType : 'string',
        success : 
        alert("Enviado")

    });
}


function teste(){

    var json = {   
            nome: "Rodrigo",
            email: "digo.15rj@gmail.com",
            senha: "1234",
            endereco: {
                logradouro: "Estrada dos Tres Rios",
                numero: "670",
                complemento: "202",
                bairro: "Freguesia",
                cidade: "Rio de Janeiro",
                uf: "RJ",
                cep: "22745005"
            },
             telefone: {
                numero: "21982385725"
            },
            dtNascimento: "26/02/1997",
            sexo: "masculino",
            documentoPessoaFisica: {
                cpf: "18388778781",
                rg: "301941399",
                dtEmissaoRG: "26/02/1997",
                orgaoEmissor: "Detran",
                habilitacao: "12345678912"
            }        
    } 
    
    


         $.ajax({
        type : "POST",
        url : "http://localhost:9080/AluguelCarros/aluguelRest/cliente/save",
		data : JSON.stringify(json),
		async : false,
        cache : false,
        contentType: "text/plain",
		dataType : 'text',
        success: 
        alert("Enviado")

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




//-----------------------------------------API VIACEP-------------------------------------------//
// function pesquisacep(valor) {

//         //Nova variável "cep" somente com dígitos.
//         var cep = valor.replace(/\D/g, '');

//         //Verifica se campo cep possui valor informado.
//         if (cep !== "") {

//             //Expressão regular para validar o CEP.
//             var validacep = /^[0-9]{8}$/;

//             //Valida o formato do CEP.
//             if(validacep.test(cep)) {

//                 //Preenche os campos com "..." enquanto consulta webservice.
//                 document.getElementById("rua").value="...";
//                 document.getElementById("bairro").value="...";
//                 document.getElementById("cidade").value="...";
//                 document.getElementById("estado").value="...";

//                 //Cria um elemento javascript.
//                 var script = document.createElement("script");

//                 //Sincroniza com o callback.
//                 script.src = "/viacep.com.br/ws/"+ cep + "/json" + "?callback=callback_name";

//                 //Insere script no documento e carrega o conteúdo.
//                 document.body.appendChild(script);

//             } //end if.
//             else {
//                 //cep é inválido.
//                 limpa_formulario_cep();
//                 alert("Formato de CEP inválido.");
//             }
//         } //end if.
//         else {
//             //cep sem valor, limpa formulário.
//             limpa_formulario_cep();
//         }
//     }