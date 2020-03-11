package org.itstep.aluguel.model;

import java.util.Date;

public class DocumentoPessoaFisica {
	
	//Atributos da Classe
	private Integer codDocPf;
	private String cpf;
	private String rg;
	private Date   dtEmissaoRG;
	private String orgaoEmissor;
	private String habilitacao;
	
	
	
	public DocumentoPessoaFisica() {
	}
	
	public DocumentoPessoaFisica(Integer codDocPf, String cpf, String rg, Date dtEmissaoRG, String orgaoEmissor, String habilitacao) {
		this.codDocPf = codDocPf;
		this.cpf = cpf;
		this.rg = rg;
		this.dtEmissaoRG = dtEmissaoRG;
		this.orgaoEmissor = orgaoEmissor;
		this.habilitacao = habilitacao;
	}
	
	//Getters and Setters
	
	public Integer getCodDocPf() {
		return codDocPf;
	}

	public void setCodDocPf(Integer codDocPf) {
		this.codDocPf = codDocPf;
	}
	
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
	
	
	public Date getDtEmissaoRG() {
		return dtEmissaoRG;
	}
	public void setDtEmissaoRG(Date dtEmissaoRG) {
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
