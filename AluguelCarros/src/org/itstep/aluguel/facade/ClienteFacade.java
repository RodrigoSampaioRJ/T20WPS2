package org.itstep.aluguel.facade;

import java.util.Date;

import org.itstep.aluguel.model.Cliente;
import org.itstep.aluguel.model.DocumentoPessoaFisica;
import org.itstep.aluguel.model.Endereco;
import org.itstep.aluguel.model.PessoaFisica;
import org.itstep.aluguel.model.Telefone;

public class ClienteFacade {
	
	public Cliente buscaCliente(Integer codigo) {
		
		//Busca no banco de dados o cliente desejado a partir do código
		
		
		
		
		
		//Mocar Dados
		String tipoPessoa = "PF";
		
		Cliente cliente = new Cliente();
		
		if("PF".equals(tipoPessoa)) {
			
			DocumentoPessoaFisica documentoPessoaFisica = new DocumentoPessoaFisica();
			documentoPessoaFisica.setCpf("12345678901");
			documentoPessoaFisica.setDtEmissaoRG(new Date());
			documentoPessoaFisica.setHabilitacao("12345");
			documentoPessoaFisica.setOrgaoEmissor("Detran");
			documentoPessoaFisica.setRg("3011941399");
			
			Endereco endereco = new Endereco();
			endereco.setBairro("Barra");
			endereco.setCep("22745055");
			endereco.setCidade("Rio de Janeiro");
			endereco.setComplemento("Loja A");
			endereco.setEstado("RJ");
			endereco.setLogradouro("Av. das Americas");
			endereco.setNumero("3555");
			
			Telefone telefone = new Telefone();
			
			telefone.setDdd(21);
			telefone.setDdi(55);
			telefone.setNumero(982385725);
			telefone.setRamal("");
			telefone.setTipoRC("R");
			telefone.setTipoTel("Celular");
			
			
			PessoaFisica pessoaFisica = new PessoaFisica();
			
			pessoaFisica.setCodPessoa(codigo);
			pessoaFisica.setDocumentoPessoaFisica(documentoPessoaFisica);
			pessoaFisica.setDtNascimento(new Date());
			pessoaFisica.setEmail("digo.15rj@gmail.com");
			pessoaFisica.setEndereco(endereco);
			pessoaFisica.setNome("Rodrigo");
			pessoaFisica.setSexo("M");
			pessoaFisica.setTelefone(telefone);
			
			cliente.setPessoaFisica(pessoaFisica);
			

			
			
			
		}else {
			
			
		}
		return cliente;
		
	}

}
