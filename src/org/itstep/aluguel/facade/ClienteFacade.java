package org.itstep.aluguel.facade;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import org.itstep.aluguel.dao.JdbcDAOFactory;
import org.itstep.aluguel.model.Cliente;
import org.itstep.aluguel.model.DocumentoPessoaFisica;
import org.itstep.aluguel.model.Endereco;
import org.itstep.aluguel.model.PessoaFisica;
import org.itstep.aluguel.model.Telefone;

public class ClienteFacade {

	JdbcDAOFactory jdbc = new JdbcDAOFactory();

	public Cliente buscaCliente(Integer codigo) {
		
		//Busca no banco de dados o cliente desejado a partir do código
		
		Cliente c = new Cliente();
		
		try {

			String sql = "SELECT COD_CLIENTE,COD_PF,DATA_CADASTRO FROM T20WPS2.tb_cliente";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

	    }
		return c;
	}

	public void addCliente(Cliente cliente) {

	}

}
