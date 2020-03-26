package org.itstep.aluguel.controller;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;

import org.itstep.aluguel.facade.CategoriaFacade;
import org.itstep.aluguel.model.CategoriaCarro;

@Path("/categoria")
public class CategoriaController {
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/lista_categorias")
	public List<CategoriaCarro> findAllCategorias(@Context HttpHeaders httpHeaders) {
		
		CategoriaFacade categoriaFacade = new CategoriaFacade();
	
		return categoriaFacade.findAllCategorias();
	}
	

}
