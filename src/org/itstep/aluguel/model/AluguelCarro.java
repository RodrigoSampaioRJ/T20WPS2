package org.itstep.aluguel.model;

import java.util.Date;

public class AluguelCarro {
	
	//Atributos da Classe
	private Cliente cliente;
	private Carro carro;
	private Date dtInicioAluguel;
	private Date dtFimAluguel;
	private Double valorPagoAluguel;
	private FormaPagamento formaPagamento;

	
	
	//Getters and Setters
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	
	public Carro getCarro() {
		return carro;
	}
	public void setCarro(Carro carro) {
		this.carro = carro;
	}
	
	
	public Date getDtInicioAluguel() {
		return dtInicioAluguel;
	}
	public void setDtInicioAluguel(Date dtInicioAluguel) {
		this.dtInicioAluguel = dtInicioAluguel;
	}
	
	
	public Date getDtFimAluguel() {
		return dtFimAluguel;
	}
	public void setDtFimAluguel(Date dtFimAluguel) {
		this.dtFimAluguel = dtFimAluguel;
	}
	
	
	public Double getValorPagoAluguel() {
		return valorPagoAluguel;
	}
	public void setValorPagoAluguel(Double valorPagoAluguel) {
		this.valorPagoAluguel = valorPagoAluguel;
	}
	
	
	public FormaPagamento getFormaPagamento() {
		return formaPagamento;
	}
	public void setFormaPagamento(FormaPagamento formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

}
