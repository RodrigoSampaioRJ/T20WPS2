package org.itstep.aluguel.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.itstep.aluguel.facade.CarroFacade;
import org.itstep.aluguel.model.Carro;


public class Principal2 {

	public static void main(String[] args) throws SQLException {

		//List<Aluno> listaAlunos = new ArrayList<Aluno>();
		
		System.out.println("Mostrar todos os registros de Carros:");
		
		CarroFacade carroFacade = new CarroFacade();
		
		for(Carro c : carroFacade.listaCarros()) {
			System.out.println(c);
			System.out.println();
		}
		
		


	}

}
