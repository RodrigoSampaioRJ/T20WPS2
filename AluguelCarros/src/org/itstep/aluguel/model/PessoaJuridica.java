package org.itstep.aluguel.model;

import java.util.Date;

public class PessoaJuridica extends Pessoa{

	//Atributos da Classe
	private String cnpj;
	private String nomeResponsavel;

	//Getters and Setters
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	
	
	public String getNomeResponsavel() {
		return nomeResponsavel;
	}
	public void setNomeResponsavel(String nomeResponsavel) {
		this.nomeResponsavel = nomeResponsavel;
	}
	
	
	@Override
	public Integer gerarCodigoUnico() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String converteData(Date data) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
