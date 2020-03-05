package org.itstep.aluguel.dto;

import java.util.Date;

import org.itstep.aluguel.model.Cliente;
import org.itstep.aluguel.model.DocumentoPessoaFisica;
import org.itstep.aluguel.model.Endereco;
import org.itstep.aluguel.model.PessoaFisica;
import org.itstep.aluguel.model.Telefone;

public class ClienteDto {
	
	private PessoaFisica pessoaFisica;
	private Cliente cliente;
	private DocumentoPessoaFisica documentoPessoaFisica;

	
	public ClienteDto(PessoaFisica pessoaFisica, Cliente cliente, DocumentoPessoaFisica documentoPessoaFisica) {
		super();
		this.pessoaFisica = pessoaFisica;
		this.cliente = cliente;
		this.documentoPessoaFisica = documentoPessoaFisica;
	}
	
	
	
	
	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}
	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public DocumentoPessoaFisica getDocumentoPessoaFisica() {
		return documentoPessoaFisica;
	}
	public void setDocumentoPessoaFisica(DocumentoPessoaFisica documentoPessoaFisica) {
		this.documentoPessoaFisica = documentoPessoaFisica;
	}
	
	


}
