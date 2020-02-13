package org.itstep.aluguel.model;

import java.util.Date;

public class DocumentoPessoaFisica {
	
	//Atributos da Classe
	private String cpf;
	private String rg;
	private String   dtEmissaoRG;
	private String orgaoEmissor;
	private String habilitacao;
	
	
	
	public DocumentoPessoaFisica() {
	}
	
	public DocumentoPessoaFisica(String cpf, String rg, String dtEmissaoRG, String orgaoEmissor, String habilitacao) {
		this.cpf = cpf;
		this.rg = rg;
		this.dtEmissaoRG = dtEmissaoRG;
		this.orgaoEmissor = orgaoEmissor;
		this.habilitacao = habilitacao;
	}
	
	//Getters and Setters
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	
	
	public String getDtEmissaoRG() {
		return dtEmissaoRG;
	}
	public void setDtEmissaoRG(String dtEmissaoRG) {
		this.dtEmissaoRG = dtEmissaoRG;
	}
	
	
	public String getOrgaoEmissor() {
		return orgaoEmissor;
	}
	public void setOrgaoEmissor(String orgaoEmissor) {
		this.orgaoEmissor = orgaoEmissor;
	}
	
	
	public String getHabilitacao() {
		return habilitacao;
	}
	public void setHabilitacao(String habilitacao) {
		this.habilitacao = habilitacao;
	}
	
	
	
	

}
