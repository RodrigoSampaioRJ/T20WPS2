var baseURL = "http://localhost:9080/AluguelCarros/aluguelRest/cliente/"

function formatar(mascara, documento){
  var i = documento.value.length;
  var saida = mascara.substring(0,1);
  var texto = mascara.substring(i);
  
  if (texto.substring(0,1) != saida){
            documento.value += texto.substring(0,1);
  }
  
}

function cadastro() {

     $.ajax({
        type : "POST",
        url : baseURL+"/cadastro",
		data : "",
		async : false,
		cache : false,
		dataType : 'json',
		success :$("#idValorCarro").val(resultValor.valor)
			        	 
            
			
        
    });
}



function pesquisacep(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep !== "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById("rua").value="...";
                document.getElementById("bairro").value="...";
                document.getElementById("cidade").value="...";
                document.getElementById("estado").value="...";

                //Cria um elemento javascript.
                var script = document.createElement("script");

                //Sincroniza com o callback.
                script.src = "/viacep.com.br/ws/"+ cep + "/json" + "?callback=callback_name";

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulario_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulario_cep();
        }
    }