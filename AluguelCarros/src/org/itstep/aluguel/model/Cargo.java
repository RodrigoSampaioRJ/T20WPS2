package org.itstep.aluguel.model;

public class Cargo {
	
	//Atributos da Classe
	private Integer codCargo;
	private String descricao;
	private String funcao; //O que este cargo faz
	
	//Getters and Setters
	public Integer getCodigo() {
		return codCargo;
	}
	public void setCodCargo(Integer codCargo) {
		this.codCargo = codCargo;
	}
	
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	public String getFuncao() {
		return funcao;
	}
	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}

	
	
	
}
