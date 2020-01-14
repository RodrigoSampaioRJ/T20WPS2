package org.itstep.aluguel.facade;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.itstep.aluguel.dao.JdbcDAOFactory;
import org.itstep.aluguel.model.Carro;

public class CarroFacade {
	
	JdbcDAOFactory jdbc = new JdbcDAOFactory();

	public Carro buscaCarro(Integer codCarro) throws SQLException {
	
		Carro carro = new Carro();

		try {

			String sql = "SELECT COD_CARRO,ANO, CHASSI, COR, MODELO, FABRICANTE, PLACA FROM T20WPS2.tb_carro";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				if (rs.getInt("COD_CARRO") == codCarro) {

					carro.setCodCarro(rs.getInt("COD_CARRO"));
					carro.setModelo(rs.getString("MODELO"));
					carro.setFabricante(rs.getString("FABRICANTE"));
					carro.setAno(rs.getString("ANO"));
					carro.setChassi(rs.getString("CHASSI"));
					carro.setPlaca(rs.getString("PLACA"));
					carro.setCor(rs.getString("COR"));
				}
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		
		return carro;
	}


	public List<Carro> listaCarros() {
		
		List<Carro> listaCarros = new ArrayList<Carro>();

		try {
			
			String sql = "SELECT COD_CARRO,ANO, CHASSI, COR, MODELO, FABRICANTE, PLACA FROM T20WPS2.tb_carro";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			
			//Buscando carros no banco e adicionando a lista
			while (rs.next()) {
				
				listaCarros.add(new Carro(rs.getInt("COD_CARRO"), rs.getString("FABRICANTE"),rs.getString("MODELO"),
						         rs.getString("ANO"),rs.getString("COR"), rs.getString("CHASSI"),rs.getString("PLACA")));			
			
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaCarros;

	}

}
