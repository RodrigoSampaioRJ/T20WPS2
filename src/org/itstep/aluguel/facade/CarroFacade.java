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
	
	//Busca carro por ID
	public Carro buscaCarro(Integer codCarro) {
	
		Carro carro = new Carro();

		try {

			String sql = "SELECT COD_CARRO,ANO, CHASSI, COR, MODELO, FABRICANTE, PLACA, VALOR FROM T20WPS2.tb_carro";

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
					carro.setValor(rs.getDouble("VALOR"));
				}
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		
		return carro;
	}

	//Listar todos os carros
	public List<Carro> findAllCarros() {
		
		List<Carro> listaCarros = new ArrayList<Carro>();

		try {
			
			String sql = "SELECT COD_CARRO,ANO, CHASSI, COR, MODELO, FABRICANTE, PLACA, VALOR FROM T20WPS2.tb_carro";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			
			//Buscando carros no banco e adicionando a lista
			while (rs.next()) {
				
				listaCarros.add(new Carro(rs.getInt("COD_CARRO"), rs.getString("FABRICANTE"),rs.getString("MODELO"),
						         rs.getString("ANO"),rs.getString("COR"), rs.getString("CHASSI"),rs.getString("PLACA"), rs.getDouble("VALOR")));			
			
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaCarros;

	}
	
	//Listar Carros Economicos
	public List<Carro> listaCarrosEconomicos() {
		
		List<Carro> listaCarrosEconomicos = new ArrayList<Carro>();

		try {
			
			String sql = "SELECT COD_CARRO,cc.descricao_carro,ANO, CHASSI, COR, MODELO, FABRICANTE, PLACA, VALOR FROM T20WPS2.tb_carro C JOIN T20WPS2.TB_CATEGORIA_CARRO CC\r\n" + 
					"ON c.cod_categoria_carro = cc.cod_categoria_carro";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			
			//Buscando carros no banco e adicionando a lista
			while (rs.next()) {
				if(rs.getString("descricao_carro").equalsIgnoreCase("economico")) {
					listaCarrosEconomicos.add(new Carro(rs.getInt("COD_CARRO"), rs.getString("FABRICANTE"),rs.getString("MODELO"),
					         rs.getString("ANO"),rs.getString("COR"), rs.getString("CHASSI"),rs.getString("PLACA"), rs.getDouble("VALOR")));
				}
							
			
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaCarrosEconomicos;

	}
	
	//Listar Carros Esportivos
	public List<Carro> listaCarrosEsportivos() {
		
		List<Carro> listaCarrosEconomicos = new ArrayList<Carro>();

		try {
			
			String sql = "SELECT COD_CARRO,cc.descricao_carro,ANO, CHASSI, COR, MODELO, FABRICANTE, PLACA, VALOR FROM T20WPS2.tb_carro C JOIN T20WPS2.TB_CATEGORIA_CARRO CC\r\n" + 
					"ON c.cod_categoria_carro = cc.cod_categoria_carro";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			
			//Buscando carros no banco e adicionando a lista
			while (rs.next()) {
				if(rs.getString("descricao_carro").equalsIgnoreCase("esportivo")) {
					listaCarrosEconomicos.add(new Carro(rs.getInt("COD_CARRO"), rs.getString("FABRICANTE"),rs.getString("MODELO"),
					         rs.getString("ANO"),rs.getString("COR"), rs.getString("CHASSI"),rs.getString("PLACA"), rs.getDouble("VALOR")));
				}
							
			
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaCarrosEconomicos;

	}
	
	//Lista de Carro por categoria
	public List<Carro> buscaPorCategoria(String categoria) {
		
		List<Carro> listaCarros = new ArrayList<Carro>();

		try {
			
			String sql = "SELECT COD_CARRO,cc.descricao_carro,ANO, CHASSI, COR, MODELO, FABRICANTE, PLACA, VALOR FROM T20WPS2.tb_carro C JOIN T20WPS2.TB_CATEGORIA_CARRO CC\r\n" + 
					"ON c.cod_categoria_carro = cc.cod_categoria_carro";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			
			//Buscando carros no banco e adicionando a lista
			while (rs.next()) {
				if(rs.getString("descricao_carro").equalsIgnoreCase(categoria)) {
					listaCarros.add(new Carro(rs.getInt("COD_CARRO"), rs.getString("FABRICANTE"),rs.getString("MODELO"),
					         rs.getString("ANO"),rs.getString("COR"), rs.getString("CHASSI"),rs.getString("PLACA"), rs.getDouble("VALOR")));
				}
							
			
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaCarros;

	}

}
