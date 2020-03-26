package org.itstep.aluguel.model;

public class CategoriaCarro {
	
	
	//Atributos da Classe
	private Integer codCategoria;
	private String descricao;
	
	public CategoriaCarro(Integer codCategoria, String descricao) {
		this.codCategoria = codCategoria;
		this.descricao = descricao;
	}
	
	//Getters and Setters
	public Integer getCodigo() {
		return codCategoria;
	}
	public void setCodCategoria(Integer codCategoria) {
		this.codCategoria = codCategoria;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	

}
