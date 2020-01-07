package org.itstep.aluguel.model;

import java.util.Date;

public class Funcionario extends PessoaFisica{
	
	//Atributos da Classe
	private Double salario;
	private Date dtAdmissao;
	private Date dtDemissao;
	private Cargo cargo;
	
	
	//Getters and Setters
	public Double getSalario() {
		return salario;
	}
	public void setSalario(Double salario) {
		this.salario = salario;
	}
	
	
	public Date getDtAdmissao() {
		return dtAdmissao;
	}
	public void setDtAdmissao(Date dtAdmissao) {
		this.dtAdmissao = dtAdmissao;
	}
	
	
	public Date getDtDemissao() {
		return dtDemissao;
	}
	public void setDtDemissao(Date dtDemissao) {
		this.dtDemissao = dtDemissao;
	}
	
	
	public Cargo getCargo() {
		return cargo;
	}
	public void setCargo(Cargo cargo) {
		this.cargo = cargo;
	}
	
	
	
	
	

}
