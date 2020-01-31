package org.itstep.aluguel.controller;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;

import org.itstep.aluguel.facade.CarroFacade;
import org.itstep.aluguel.model.Carro;

@Path("/aluguel_carro_economico")
public class CarroController {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{codigo}")
	public Carro buscaCarro(@Context HttpHeaders httpHeaders, @PathParam ("codigo") Integer codigo){
		
		Carro carro = null;
		
		CarroFacade carroFacade = new CarroFacade();
		carro = carroFacade.buscaCarro(codigo);
		
		return carro;
	}
	
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/lista")
	public List<Carro> listaCarros(@Context HttpHeaders httpHeaders) {
		
		CarroFacade carroFacade = new CarroFacade();
	
		return carroFacade.findAllCarros();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/lista_carros_economicos")
	public List<Carro> listaCarrosEconomicos(@Context HttpHeaders httpHeaders) {
		
		CarroFacade carroFacade = new CarroFacade();
	
		return carroFacade.listaCarrosEconomicos();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/lista_carros_esportivos")
	public List<Carro> listaCarrosEsportivos(@Context HttpHeaders httpHeaders) {
		
		CarroFacade carroFacade = new CarroFacade();
	
		return carroFacade.listaCarrosEsportivos();
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("b{categoria}")
	public List<Carro> buscaPorCategoria(@Context HttpHeaders httpHeaders, @PathParam ("categoria") String categoria) {
		
		CarroFacade carroFacade = new CarroFacade();
		
		return carroFacade.buscaPorCategoria(categoria);
		
	}
	
	

}
