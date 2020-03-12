package org.itstep.aluguel.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.itstep.aluguel.facade.ClienteFacade;
import org.itstep.aluguel.model.Cliente;
import org.itstep.aluguel.model.PessoaFisica;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Path("/cliente")
public class ClienteController {
	Gson gs = new Gson();

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{codigo}")
	public Cliente findClienteByCodigo(@Context HttpHeaders httpHeaders, @PathParam("codigo") Integer codigo) {

		ClienteFacade clienteFacade = new ClienteFacade();

		return clienteFacade.findClienteByCodigo(codigo);
	}

//	@GET
//	@Produces(MediaType.APPLICATION_JSON)
//	@Path("{nome}")
//	public List<Cliente> findClienteByName(@Context HttpHeaders httpHeaders, @PathParam("nome") String nome) {
//
//		ClienteFacade clienteFacade = new ClienteFacade();
//
//		return clienteFacade.findClienteByName(nome);
//	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/lista")
	public List<Cliente> findAllClientes(@Context HttpHeaders httpHeaders) {

		ClienteFacade clienteFacade = new ClienteFacade();

		return clienteFacade.findAllClientes();
	}
	
	@POST
	@Consumes(MediaType.TEXT_PLAIN)
	@Path("/save")
	public Response addCliente(String data) throws ParseException, SQLException {
		
		System.out.println(data);
		GsonBuilder gsb = new GsonBuilder();
		gsb.setDateFormat("dd/MM/yyyy");	
		gs = gsb.create();	
		
		PessoaFisica pf = gs.fromJson(data, PessoaFisica.class); 
		
		ClienteFacade clienteFacade = new ClienteFacade();

		if(clienteFacade.addCliente(pf)) {
			return Response.status(200).build();
		}else {
			return Response.status(500).build();
		}
		//return Response.status(200).entity(result).build();
	}
	
	@DELETE
	@Consumes(MediaType.TEXT_PLAIN)
	@Path("/remove/{codigo}")
	public Response deleteCliente(@Context HttpHeaders httpHeaders, @PathParam("codigo") Integer codigo) {
		
		ClienteFacade clienteFacade = new ClienteFacade();
		
		if(clienteFacade.deleteCliente(codigo)) {
			return Response.status(200).build();
		}else {
			return Response.status(500).build();
		}
	}
	

	
}
