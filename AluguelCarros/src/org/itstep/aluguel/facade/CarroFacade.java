package org.itstep.aluguel.facade;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.itstep.aluguel.dao.JdbcDAOFactory;
import org.itstep.aluguel.model.Carro;

public class CarroFacade {

	public Carro buscaCarro(Integer codCarro) throws SQLException {

		Carro carro = new Carro();

		try {
			JdbcDAOFactory jdbc = new JdbcDAOFactory();

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

		} catch (SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return carro;
	}

}
