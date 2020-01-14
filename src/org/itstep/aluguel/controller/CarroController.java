package org.itstep.aluguel.controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;

import org.itstep.aluguel.facade.ClienteFacade;
import org.itstep.aluguel.model.Carro;

@Path("/carros")
public class CarroController {
	
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{codigo}")
	public Carro listaCarros (@Context HttpHeaders httpHeaders,
								@PathParam ("codigo") Integer codigo) {
		
		Carro carro = new Carro();
		ClienteFacade clienteFacade = new ClienteFacade();
		//carro = CarroFacade.buscaCliente(codigo);
		
		return carro;
	}
	
	

}
