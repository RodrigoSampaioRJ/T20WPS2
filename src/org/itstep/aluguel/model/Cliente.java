package org.itstep.aluguel.model;

import java.util.Date;

public class Cliente  {
	
	//Atributos da Classe
	private Integer codCliente;
	private PessoaFisica 	pessoaFisica;
	private PessoaJuridica  pessoaJuridica;
	private Date 			dtCadastro;
	

	public Cliente() {
	}
	public Cliente(Integer codCliente, PessoaFisica pessoaFisica) {
		this.codCliente = codCliente;
		this.pessoaFisica = pessoaFisica;
		this.pessoaJuridica = null;
		this.dtCadastro = new Date();
	}
	
	//Getters and Setters
	
	public Integer getCodCliente() {
		return codCliente;
	}
	public void setCodCliente(Integer codCliente) {
		this.codCliente = codCliente;
	}
	
	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}
	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}
	
	
	public PessoaJuridica getPessoaJuridica() {
		return pessoaJuridica;
	}


	public void setPessoaJuridica(PessoaJuridica pessoaJuridica) {
		this.pessoaJuridica = pessoaJuridica;
	}


	public Date getDtCadastro() {
		return dtCadastro;
	}


	public void setDtCadastro(Date dtCadastro) {
		this.dtCadastro = dtCadastro;
	}

	


}
