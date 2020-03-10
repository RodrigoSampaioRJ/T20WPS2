package org.itstep.aluguel.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PessoaFisica extends Pessoa {
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	//Atributos da Classe
	private Date 				    dtNascimento;
	private String   				sexo;
	private DocumentoPessoaFisica   documentoPessoaFisica;
	
	
	public PessoaFisica() {
	}
	
	
	public PessoaFisica(Integer codPessoa, String nome, String email,String senha, Endereco endereco, Telefone telefone, Date dtNascimento, String sexo, DocumentoPessoaFisica documentoPessoaFisica) {
		super(codPessoa,nome, email,senha, endereco, telefone);
		this.dtNascimento = dtNascimento;
		this.sexo = sexo;
		this.documentoPessoaFisica = documentoPessoaFisica;
	}
	
	
	//Getters and Setters
	public Date getDtNascimento() {
		return dtNascimento;
	}
	public void setDtNascimento(Date dtNascimento) {
		this.dtNascimento = dtNascimento;
	}


	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	
	public DocumentoPessoaFisica getDocumentoPessoaFisica() {
		return documentoPessoaFisica;
	}
	public void setDocumentoPessoaFisica(DocumentoPessoaFisica documentoPessoaFisica) {
		this.documentoPessoaFisica = documentoPessoaFisica;
	}
	
	
	@Override
	public Integer gerarCodigoUnico() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Date converteData(String data) {
		
		Date date = null;
		try {
			date = sdf.parse(data);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		
		return date;
	}	
	
	
	

}
