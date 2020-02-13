package org.itstep.aluguel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.ws.rs.Consumes;
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

@Path("/cliente")
public class ClienteController {
	Gson gs = new Gson();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{codigo}")
	public Cliente buscaCliente (@Context HttpHeaders httpHeaders,
								@PathParam ("codigo") Integer codigo) {
		
		ClienteFacade clienteFacade = new ClienteFacade();
	
		return clienteFacade.buscaCliente(codigo);
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("/cadastro")
	public void cadastraCliente (@Context HttpHeaders httpHeaders) {
		
		
			
	}
	
	//TESTE
	@POST
	@Consumes(MediaType.TEXT_PLAIN)
	@Path("/save")
	public Response postMsg(String data) {
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
//		Date date = format.parse(datePost);
		
		System.out.println(data);
		
		PessoaFisica pf = gs.fromJson(data, PessoaFisica.class); 
		
		String result = "Nome: " + pf.getNome() + "\n"+
		"Email: " + pf.getEmail() +"\n" +
		"Logradouro:" + pf.getEndereco().getLogradouro() +"\n" +
		"Data Nascimento:" + pf.getDtNascimento();
		
		System.out.println(result);
		
		return Response.status(200).entity(result).build();
	}
	
}
