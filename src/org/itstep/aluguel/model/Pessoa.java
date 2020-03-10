package org.itstep.aluguel.model;

import java.util.Date;

public abstract class Pessoa {
	
	//Atributos da Classe
    private Integer  codPessoa;
	private String   nome;
	private String   email;
	private String   senha;
	private Endereco endereco;
	private Telefone telefone;
	
	
	public Pessoa() {
	}
	
	public Pessoa(Integer codPessoa, String nome, String email,String senha, Endereco endereco, Telefone telefone) {
		this.codPessoa = codPessoa;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.endereco = endereco;
		this.telefone = telefone;
		
	}
	public Pessoa(Integer codPessoa, String nome, String email) {
		this.codPessoa = codPessoa;
		this.nome = nome;
		this.email = email;
		
	}
	//Getters and Setters
	public Integer getCodPessoa() {
		return codPessoa;
	}
	public void setCodPessoa(Integer codPessoa) {
		this.codPessoa = codPessoa;
	}
	

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public Endereco getEndereco() {
		return endereco;
	}
	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	
	
	public Telefone getTelefone() {
		return telefone;
	}
	public void setTelefone(Telefone telefone) {
		this.telefone = telefone;
	}
	
	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
	public abstract Integer gerarCodigoUnico();
	public abstract Date converteData(String data);
	
	
	

}
