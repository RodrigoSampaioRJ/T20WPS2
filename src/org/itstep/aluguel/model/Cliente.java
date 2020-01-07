package org.itstep.aluguel.model;

import java.util.Date;

public class Cliente  {
	
	//Atributos da Classe
	private PessoaFisica 	pessoaFisica;
	private PessoaJuridica  pessoaJuridica;
	private Date 			dtCadastro;
	
	

	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}
	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}

	//Getters and Setters
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
