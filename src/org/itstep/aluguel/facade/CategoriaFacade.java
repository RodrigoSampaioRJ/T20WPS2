package org.itstep.aluguel.facade;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.itstep.aluguel.dao.JdbcDAOFactory;
import org.itstep.aluguel.model.CategoriaCarro;

public class CategoriaFacade {
	
	JdbcDAOFactory jdbc = new JdbcDAOFactory();
	
	public List<CategoriaCarro> findAllCategorias() {
		
		List<CategoriaCarro>listaCategorias = new ArrayList<CategoriaCarro>();
		
		try {
			
			String sql = "SELECT COD_CATEGORIA_CARRO, DESCRICAO_CARRO FROM T20WPS2.tb_categoria_carro";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			
			//Buscando categorias no banco e adicionando a lista
			while (rs.next()) {
				
				listaCategorias.add(new CategoriaCarro(rs.getInt("COD_CATEGORIA_CARRO"),rs.getString("DESCRICAO_CARRO")));			
			
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaCategorias;
		
	}

}
