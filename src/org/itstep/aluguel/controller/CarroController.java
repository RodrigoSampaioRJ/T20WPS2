package org.itstep.aluguel.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.itstep.aluguel.facade.CarroFacade;
import org.itstep.aluguel.model.Carro;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Path("/aluguel_carro_economico")
public class CarroController {
	Gson gs = new Gson();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{codigo}")
	public Carro findCarroById(@Context HttpHeaders httpHeaders, @PathParam("codigo") Integer codigo) {

		CarroFacade carroFacade = new CarroFacade();
		
		return carroFacade.findCarroById(codigo);
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
	
	@POST
	@Consumes(MediaType.TEXT_PLAIN)
	@Path("/save")
	public Response addCarro(String data) throws ParseException, SQLException {
		
		System.out.println(data);
		GsonBuilder gsb = new GsonBuilder();
		gs = gsb.create();	
		
		Carro carro = gs.fromJson(data, Carro.class); 
		
		CarroFacade carroFacade = new CarroFacade();
		
		System.out.println("Modelo: " + carro.getModelo() + ", Codigo categoria: " + carro.getCategoria().getCodigo());
		
		if(carroFacade.addCarro(carro)) {
			return Response.status(200).build();
		}else {
			return Response.status(500).build();
		}
		
	}
	
	@PUT
	@Consumes(MediaType.TEXT_PLAIN)
	@Path("/update/{codigo}")
	public Response updateCliente(@Context HttpHeaders httpHeaders, @PathParam("codigo") Integer codigo, String data) {
		
		CarroFacade carroFacade = new CarroFacade();
		
		System.out.println(data);
		GsonBuilder gsb = new GsonBuilder();
		gs = gsb.create();	
		
		Carro carro = gs.fromJson(data, Carro.class); 
		
		if(carroFacade.updateCarro(carro, codigo)) {
			return Response.status(200).build();
		}else {
			return Response.status(500).build();
		}
		
	}
	
	

}
