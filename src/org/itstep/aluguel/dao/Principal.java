package org.itstep.aluguel.dao;

import java.sql.SQLException;
import java.util.Scanner;

import org.itstep.aluguel.facade.CarroFacade;

public class Principal {	

	public static void main(String[] args) throws SQLException{
		
		Scanner read = new Scanner(System.in);
				

		System.out.println("Digite o código do carro que deseja exibir: ");
		Integer codigo = read.nextInt();
		
		CarroFacade carroFacade = new CarroFacade();
		System.out.println(carroFacade.buscaCarro(codigo).toString());

		
		read.close();
		

	}

}
