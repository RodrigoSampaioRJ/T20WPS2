package org.itstep.aluguel.model;

public class Carro {
	
	
	//Atributos da Classe
	private Integer codCarro;
	private String fabricante;
	private String modelo;
	private int ano;
	private String cor;
	private String chassi;
	private String placa;
	private CategoriaCarro categoria;
	private String responsavel;
	private Double valor;
	
	
	public Carro() {
	}
	public Carro(Integer codCarro, String fabricante, String modelo, int ano, String cor, String chassi,
			String placa, String responsavel, Double valor) {

		this.codCarro = codCarro;
		this.fabricante = fabricante;
		this.modelo = modelo;
		this.ano = ano;
		this.cor = cor;
		this.chassi = chassi;
		this.placa = placa;
		this.responsavel= responsavel;
		this.valor = valor;
		
	}
	//Getters and Setters
	public String getFabricante() {
		return fabricante;
	}
	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	
	
	public Integer getCodCarro() {
		return codCarro;
	}
	public void setCodCarro(Integer codCarro) {
		this.codCarro = codCarro;
	}

	
	
	public String getResponsavel() {
		return responsavel;
	}
	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}
	
	
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	
	
	
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	
	
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	
	
	public String getChassi() {
		return chassi;
	}
	public void setChassi(String chassi) {
		this.chassi = chassi;
	}
	
	
	public CategoriaCarro getCategoria() {
		return categoria;
	}
	public void setCategoria(CategoriaCarro categoria) {
		this.categoria = categoria;
	}
	
	
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	
	public String toString() {
		return "Modelo: " + this.modelo + "\n"
				+ "Fabricante: " + this.fabricante + "\n"
				+ "Placa: " + this.placa + "\n"
				+ "Código: " + this.codCarro;
	}
	
	
	
	
	
	
	

}
