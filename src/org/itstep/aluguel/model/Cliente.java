package org.itstep.aluguel.model;

import java.util.Date;

public class Cliente  {
	
	//Atributos da Classe
	private PessoaFisica 	pessoaFisica;
	private PessoaJuridica  pessoaJuridica;
	private Date 			dtCadastro;
	
	


	public Cliente() {
	}
	public Cliente(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
		this.pessoaJuridica = null;
		this.dtCadastro = new Date();
	}
	
	//Getters and Setters
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
