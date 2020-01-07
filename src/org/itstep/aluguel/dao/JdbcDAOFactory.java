package org.itstep.aluguel.dao;

import java.sql.*;

public class JdbcDAOFactory {
	
	private Connection connection;
	
	public JdbcDAOFactory() throws SQLException {
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			this.connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "root");
		} catch (Exception e) {
			throw new RuntimeException("Erro ao tentar recuperar conexão com o banco de dados ", e);
		}
	}
	
	
	public Connection getConexao() {
		return this.connection;
	}

}
