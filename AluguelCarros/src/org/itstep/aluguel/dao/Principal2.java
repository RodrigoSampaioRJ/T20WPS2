package org.itstep.aluguel.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Principal2 {

	public static void main(String[] args) throws SQLException {

		//List<Aluno> listaAlunos = new ArrayList<Aluno>();
		
		JdbcDAOFactory jdbc = new JdbcDAOFactory();

		System.out.println("Mostrar todos os registros de alunos:");
		
		
		//PEGAR O PROXIMO VALOR DA SEQUENCIA
		Statement stmt = jdbc.getConexao().createStatement();
		String pegaSequencia = "SELECT T20WPS2.SQ_ALUNO1.NEXTVAL FROM DUAL";		
		ResultSet  rs = stmt.executeQuery(pegaSequencia);
		
		if(rs.next()) {
			
			String sqlInsert = "INSERT INTO T20WPS2.TB_ALUNO(COD_ALUNO, NOME_ALUNO)VALUES (?,?)";
			
			PreparedStatement ps = jdbc.getConexao().prepareStatement(sqlInsert);
				
			ps.setInt(1, rs.getInt(1));
			ps.setString(2, "José");		
			ps.execute();
			
			ps.close();
		}
		
		
		

		
		
		
		
//		ResultSet rs = ps.executeQuery();
		
//		while(rs.next()) {
//			
//			Aluno aluno = new Aluno();
//			
//			aluno.setCodAluno(rs.getInt("COD_ALUNO"));
//			aluno.setNome(rs.getString("NOME_ALUNO"));
//			
//			listaAlunos.add(aluno);
//			
//		}
//		
//		for(Aluno a : listaAlunos) {
//			System.out.println("Código: " + a.getCodAluno());
//			System.out.println("Nome: " + a.getNome());
//			System.out.println();
//		}

	}

}
