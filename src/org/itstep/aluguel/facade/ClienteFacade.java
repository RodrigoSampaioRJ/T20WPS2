package org.itstep.aluguel.facade;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.itstep.aluguel.dao.JdbcDAOFactory;
import org.itstep.aluguel.model.Cliente;
import org.itstep.aluguel.model.DocumentoPessoaFisica;
import org.itstep.aluguel.model.Endereco;
import org.itstep.aluguel.model.PessoaFisica;
import org.itstep.aluguel.model.Telefone;

public class ClienteFacade {

	JdbcDAOFactory jdbc = new JdbcDAOFactory();
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	
	public Cliente buscaCliente(Integer codigo) {
		
		//Busca no banco de dados o cliente desejado a partir do código
		
		Cliente c = new Cliente();
		
		try {

			String sql = "SELECT COD_CLIENTE,COD_PF,DATA_CADASTRO FROM T20WPS2.tb_cliente";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				if(rs.getInt("COD_CLIENTE")==codigo) {
					c.setDtCadastro(new Date());
				}
			}

	    }catch(SQLException e) {
	    	
	    }
		return c;
	}
	
	
	
//	nome+","+senha+","+cpf+","+dtNascimento+","+sexo+","+telefone+","+telefone2+","+email+","+
//    cep+","+logradouro+","+numero+","+bairro+","+complemento+","+cidade+","+uf,

	public void addCliente(String nome, String senha, Integer cpf,String rg,String dtEmissaoRG, String orgaoEmissor, String habilitacao,
							String dtNascimento, String sexo, int telefone, String email, String cep,
							String logradouro, String numero, String bairro, String complemento, String cidade, String uf) throws ParseException {
		
		Integer codPessoa = null;
		Telefone tel = new Telefone(telefone);
		Endereco end = new Endereco(logradouro, numero, complemento, bairro, cidade, uf, cep);
		DocumentoPessoaFisica  dpf = new DocumentoPessoaFisica(cpf, rg, sdf.parse(dtEmissaoRG), orgaoEmissor, habilitacao);

		PessoaFisica pf = new PessoaFisica(codPessoa, nome, email, end, tel, senha, sdf.parse(dtNascimento), sexo, dpf);
		
		Cliente cliente = new Cliente(pf);
		
		
		
		
		
		
		
		int cod_doc_pf_gerado = 0;
		int cod_pf_gerado = 0;
		String sqlInsertDoc = "INSERT INTO T20WPS2.tb_documento_pf (cod_documento_pf, cpf, rg, data_emissao_rg, orgao_emissor_rg, habilitacao) "
				+ "VALUES (T20WPS2.sq_doc_pf.nextval, ?, ?, ?, ?, ?)";
//		String sqlInsertCliente = "INSERT INTO T20WPS2.tb_cliente (cod_cliente, cod_pf, cod_pj, data_cadastro) VALUES (T20WPS2.sq_cliente.nextval, 0 , 0, '20-DEC-2019')";
//		String sqlInsertTel = "INSERT INTO T20WPS2.TB_TELEFONE VALUES (T20WPS2.SQ_TELEFONE.NEXTVAL," + telefone;
		String sqlInsertPessoaF = "INSERT INTO T20WPS2.tb_pf (cod_pf, cod_documento_pf, data_nascimento, sexo) VALUES (t20wps2.sq_pf.nextval, ?,?,?)";
		
		String sqlInsertPessoa = "INSERT INTO T20WPS2.tb_pessoa (cod_pessoa, nome_pessoa, email_pessoa, senha_pessoa)\r\n" + 
				"VALUES (T20WPS2.sq_pessoa_1.nextval,?,?,?)";
		try {
			
		PreparedStatement ps = jdbc.getConexao().prepareStatement(sqlInsertDoc); 
		PreparedStatement psCod = jdbc.getConexao().prepareStatement("SELECT t20wps2.sq_doc_pf.currval from dual");
		ps.setInt(1, dpf.getCpf());
		ps.setString(2, dpf.getRg());
		ps.setDate(3, new java.sql.Date(dpf.getDtEmissaoRG().getTime()));
		ps.setString(4, dpf.getOrgaoEmissor());
		ps.setString(5, dpf.getHabilitacao());
		
		if(ps.execute()) {		
			ResultSet rs = psCod.executeQuery();
			cod_doc_pf_gerado = rs.getInt("CURRVAL");
			rs.close();
			
		}
		ps.close();
		psCod.close();
		
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
		try {
			PreparedStatement ps = jdbc.getConexao().prepareStatement(sqlInsertPessoaF);
			PreparedStatement psCod = jdbc.getConexao().prepareStatement("SELECT t20wps2.sq_pf.currval from dual");
			ps.setInt(1, cod_doc_pf_gerado);
			ps.setDate(2, new java.sql.Date(pf.getDtNascimento().getTime()));
			ps.setString(3, pf.getSexo());
			
			if(ps.execute()) {
				ResultSet rs = psCod.executeQuery();
				cod_pf_gerado = rs.getInt("CURRVAL");
				rs.close();
			}
			ps.close();
			psCod.close();
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
		//INSERÇAO DA PESSOA CONTINUAR
		try {
			PreparedStatement ps = jdbc.getConexao().prepareStatement(sqlInsertPessoa);
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	

}
