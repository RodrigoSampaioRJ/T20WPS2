package org.itstep.aluguel.facade;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.itstep.aluguel.dao.JdbcDAOFactory;
import org.itstep.aluguel.model.Cliente;
import org.itstep.aluguel.model.DocumentoPessoaFisica;
import org.itstep.aluguel.model.Endereco;
import org.itstep.aluguel.model.Pessoa;
import org.itstep.aluguel.model.PessoaFisica;
import org.itstep.aluguel.model.Telefone;

public class ClienteFacade {

	JdbcDAOFactory jdbc = new JdbcDAOFactory();
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

	public Cliente findClienteByCodigo(Integer codigo){

		// Busca no banco de dados o cliente desejado a partir do c�digo

		Cliente c = null;


		try {
			String sql = "SELECT c.cod_cliente, p.cod_pessoa,dpf.cod_documento_pf, p.nome_pessoa, p.email_pessoa, p.senha_pessoa,t.numero,pf.data_nascimento,pf.sexo,dpf.cpf, dpf.data_emissao_rg, dpf.habilitacao, dpf.orgao_emissor_rg, dpf.rg,\r\n" + 
					"e.logradouro, e.numero_endereco, e.complemento, e.estado, e.cidade, e.bairro,e.cep\r\n" + 
					"FROM t20wps2.tb_cliente c \r\n" + 
					"JOIN t20wps2.tb_pf pf ON c.cod_pf = pf.cod_pf \r\n" + 
					"JOIN t20wps2.tb_pessoa p ON p.cod_pessoa = pf.cod_pessoa\r\n" + 
					"JOIN t20wps2.tb_endereco e ON p.cod_pessoa = e.cod_pessoa\r\n" + 
					"JOIN t20wps2.tb_telefone t ON p.cod_pessoa = t.cod_pessoa\r\n" + 
					"JOIN T20WPS2.tb_documento_pf dpf ON pf.cod_documento_pf = dpf.cod_documento_pf\r\n" + 
					"WHERE cod_cliente = ?";
			
			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);
			
			ps.setInt(1, codigo);
			
			ResultSet rs = ps.executeQuery();
			
			
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				Endereco endereco = new Endereco(rs.getString("LOGRADOURO"), rs.getInt("NUMERO_ENDERECO"),
						rs.getString("COMPLEMENTO"), rs.getString("BAIRRO"), rs.getString("CIDADE"),
						rs.getString("ESTADO"), rs.getInt("CEP"));

				Telefone telefone = new Telefone(rs.getString("NUMERO"));

				Date dtNascimento = rs.getDate("DATA_NASCIMENTO");

				Date dtEmissaoRG = rs.getDate("DATA_EMISSAO_RG");

				DocumentoPessoaFisica documentoPessoaFisica = new DocumentoPessoaFisica(rs.getInt("COD_DOCUMENTO_PF"),rs.getString("CPF"),
						rs.getString("RG"), dtEmissaoRG, rs.getString("ORGAO_EMISSOR_RG"), rs.getString("HABILITACAO"));

				PessoaFisica pessoaFisica = new PessoaFisica(rs.getInt("COD_PESSOA"),rs.getString("NOME_PESSOA"), rs.getString("EMAIL_PESSOA"),
						rs.getString("SENHA_PESSOA"), endereco, telefone, dtNascimento, rs.getString("SEXO"),
						documentoPessoaFisica);

				c = new Cliente(rs.getInt("COD_CLIENTE"),pessoaFisica);
				
				return c;
			}
			ps.close();
			rs.close();
			
		}catch(SQLException e ) {
			System.out.println(e.getMessage());
		}
		return c;
	}

	public List<Cliente> findClienteByName(String nome) {

		List<Cliente> list = new ArrayList<Cliente>();

		try {
			String sql = "SELECT c.cod_cliente, p.cod_pessoa,dpf.cod_documento_pf, p.nome_pessoa, p.email_pessoa, p.senha_pessoa,t.numero,\n"
					+ "pf.data_nascimento,pf.sexo,\n"
					+ "dpf.cpf, dpf.data_emissao_rg, dpf.habilitacao, dpf.orgao_emissor_rg, dpf.rg,\n"
					+ "e.logradouro, e.numero_endereco, e.complemento, e.estado, e.cidade, e.bairro,e.cep\n"
					+ "FROM t20wps2.tb_pessoa p\r\n" + "JOIN t20wps2.tb_pf pf ON p.cod_pessoa = pf.cod_pessoa\n"
					+ "JOIN t20wps2.tb_cliente c ON pf.cod_pf = c.cod_pf \n"
					+ "JOIN t20wps2.tb_endereco e ON p.cod_pessoa = e.cod_pessoa\n"
					+ "JOIN t20wps2.tb_telefone t ON p.cod_pessoa = t.cod_pessoa\n"
					+ "JOIN T20WPS2.tb_documento_pf dpf ON pf.cod_documento_pf = dpf.cod_documento_pf";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Endereco endereco = new Endereco(rs.getString("LOGRADOURO"), rs.getInt("NUMERO_ENDERECO"),
						rs.getString("COMPLEMENTO"), rs.getString("BAIRRO"), rs.getString("CIDADE"),
						rs.getString("ESTADO"), rs.getInt("CEP"));

				Telefone telefone = new Telefone(rs.getString("NUMERO"));

				Date dtNascimento = rs.getDate("DATA_NASCIMENTO");

				Date dtEmissaoRG = rs.getDate("DATA_EMISSAO_RG");

				DocumentoPessoaFisica documentoPessoaFisica = new DocumentoPessoaFisica(rs.getInt("COD_DOCUMENTO_PF"),rs.getString("CPF"),
						rs.getString("RG"), dtEmissaoRG, rs.getString("ORGAO_EMISSOR_RG"), rs.getString("HABILITACAO"));

				PessoaFisica pessoaFisica = new PessoaFisica(rs.getInt("COD_PESSOA"),rs.getString("NOME_PESSOA"), rs.getString("EMAIL_PESSOA"),
						rs.getString("SENHA_PESSOA"), endereco, telefone, dtNascimento, rs.getString("SEXO"),
						documentoPessoaFisica);

				Cliente cliente = new Cliente(rs.getInt("COD_CLIENTE"),pessoaFisica);
				
				if(cliente.getPessoaFisica().getNome().equalsIgnoreCase(nome)) {
					list.add(cliente);
				}
				rs.close();
				ps.close();

			}
		} catch (SQLException e) {
			throw new RuntimeException();
		}
		return list;
	}
	

	public List<Cliente> findAllClientes() {

		List<Cliente> list = new ArrayList<Cliente>();

		try {
			String sql = "SELECT c.cod_cliente, p.cod_pessoa,dpf.cod_documento_pf, p.nome_pessoa, p.email_pessoa, p.senha_pessoa,t.numero,\n"
					+ "pf.data_nascimento,pf.sexo,\n"
					+ "dpf.cpf, dpf.data_emissao_rg, dpf.habilitacao, dpf.orgao_emissor_rg, dpf.rg,\n"
					+ "e.logradouro, e.numero_endereco, e.complemento, e.estado, e.cidade, e.bairro,e.cep\n"
					+ "FROM t20wps2.tb_pessoa p\r\n" + "JOIN t20wps2.tb_pf pf ON p.cod_pessoa = pf.cod_pessoa\n"
					+ "JOIN t20wps2.tb_cliente c ON pf.cod_pf = c.cod_pf \n"
					+ "JOIN t20wps2.tb_endereco e ON p.cod_pessoa = e.cod_pessoa\n"
					+ "JOIN t20wps2.tb_telefone t ON p.cod_pessoa = t.cod_pessoa\n"
					+ "JOIN T20WPS2.tb_documento_pf dpf ON pf.cod_documento_pf = dpf.cod_documento_pf";

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Endereco endereco = new Endereco(rs.getString("LOGRADOURO"), rs.getInt("NUMERO_ENDERECO"),
						rs.getString("COMPLEMENTO"), rs.getString("BAIRRO"), rs.getString("CIDADE"),
						rs.getString("ESTADO"), rs.getInt("CEP"));

				Telefone telefone = new Telefone(rs.getString("NUMERO"));

				Date dtNascimento = rs.getDate("DATA_NASCIMENTO");

				Date dtEmissaoRG = rs.getDate("DATA_EMISSAO_RG");

				DocumentoPessoaFisica documentoPessoaFisica = new DocumentoPessoaFisica(rs.getInt("COD_DOCUMENTO_PF"),rs.getString("CPF"),
						rs.getString("RG"), dtEmissaoRG, rs.getString("ORGAO_EMISSOR_RG"), rs.getString("HABILITACAO"));

				PessoaFisica pessoaFisica = new PessoaFisica(rs.getInt("COD_PESSOA"),rs.getString("NOME_PESSOA"), rs.getString("EMAIL_PESSOA"),
						rs.getString("SENHA_PESSOA"), endereco, telefone, dtNascimento, rs.getString("SEXO"),
						documentoPessoaFisica);

				Cliente cliente = new Cliente(rs.getInt("COD_CLIENTE"),pessoaFisica);

				list.add(cliente);

			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	public boolean addCliente(PessoaFisica pf) throws ParseException, SQLException {

		Cliente cliente = new Cliente();

		int cod_doc_pf_gerado = 0;
		int cod_pf_gerado = 0;
		int cod_pessoa_gerado = 0;
		int cod_cliente_gerado = 0;

		String sqlInsertDoc = "INSERT INTO T20WPS2.tb_documento_pf (cpf, rg, data_emissao_rg, orgao_emissor_rg, habilitacao) "
				+ "VALUES (?, ?, ?, ?, ?)";

		String sqlInsertTel = "INSERT INTO T20WPS2.TB_TELEFONE (numero,cod_pessoa) VALUES (?,?)";

		String sqlInsertPessoaF = "INSERT INTO T20WPS2.tb_pf (cod_documento_pf, data_nascimento, sexo,cod_pessoa) VALUES (?,?,?,?)";

		String sqlInsertPessoa = "INSERT INTO T20WPS2.tb_pessoa (nome_pessoa, email_pessoa, senha_pessoa)"
				+ "VALUES (?,?,?)";

		String sqlInsertCliente = "INSERT INTO T20WPS2.tb_cliente (cod_pf, cod_pj, data_cadastro)" + "VALUES (?,?,?)";

		String sqlInsertEndereco = "INSERT INTO T20WPS2.tb_endereco (logradouro,numero_endereco,complemento,bairro,cidade,estado,cep,cod_pessoa) VALUES (?,?,?,?,?,?,?,?)";

		// INSERT DOC PF
		try {

			PreparedStatement ps = jdbc.getConexao().prepareStatement(sqlInsertDoc);
			PreparedStatement psCod = jdbc.getConexao().prepareStatement("SELECT t20wps2.sq_doc_pf.currval from dual");
			ps.setString(1, pf.getDocumentoPessoaFisica().getCpf());
			ps.setString(2, pf.getDocumentoPessoaFisica().getRg());
			ps.setDate(3, new java.sql.Date(pf.getDocumentoPessoaFisica().getDtEmissaoRG().getTime()));
			ps.setString(4, pf.getDocumentoPessoaFisica().getOrgaoEmissor());
			ps.setString(5, pf.getDocumentoPessoaFisica().getHabilitacao());
			ps.execute();

			ResultSet rs = psCod.executeQuery();

			while (rs.next()) {
				cod_doc_pf_gerado = rs.getInt("CURRVAL");
			}
			ps = null;
			psCod = null;
			rs = null;
			// INSERT PESSOA
			ps = jdbc.getConexao().prepareStatement(sqlInsertPessoa);
			psCod = jdbc.getConexao().prepareStatement("SELECT t20wps2.sq_pessoa.currval from dual");
			ps.setString(1, pf.getNome());
			ps.setString(2, pf.getEmail());
			ps.setString(3, pf.getSenha());
			ps.execute();

			rs = psCod.executeQuery();
			while (rs.next()) {
				cod_pessoa_gerado = rs.getInt("CURRVAL");
			}
			ps = null;
			psCod = null;
			rs = null;
			// INSERT PF

			ps = jdbc.getConexao().prepareStatement(sqlInsertPessoaF);
			psCod = jdbc.getConexao().prepareStatement("SELECT t20wps2.sq_pf.currval from dual");
			ps.setInt(1, cod_doc_pf_gerado);
			ps.setDate(2, new java.sql.Date(pf.getDtNascimento().getTime()));
			ps.setString(3, String.valueOf(pf.getSexo().charAt(0)));
			ps.setInt(4, cod_pessoa_gerado);
			ps.execute();

			rs = psCod.executeQuery();
			while (rs.next()) {
				cod_pf_gerado = rs.getInt("CURRVAL");
			}
			ps = null;
			psCod = null;
			rs = null;
			// INSERT CLIENTE
			ps = jdbc.getConexao().prepareStatement(sqlInsertCliente);
			psCod = jdbc.getConexao().prepareStatement("SELECT t20wps2.sq_cliente.currval from dual");
			ps.setInt(1, cod_pf_gerado);
			ps.setString(2, null);
			ps.setDate(3, new java.sql.Date(cliente.getDtCadastro().getTime()));
			ps.execute();

			rs = psCod.executeQuery();
			while (rs.next()) {
				cod_cliente_gerado = rs.getInt("CURRVAL");
			}
			ps = null;

			// INSERT TELEFONE

			ps = jdbc.getConexao().prepareStatement(sqlInsertTel);
			ps.setLong(1, Long.parseLong(pf.getTelefone().getNumero()));
			ps.setInt(2, cod_pessoa_gerado);
			ps.execute();
			ps = null;
			// INSERT ENDERECO
			ps = jdbc.getConexao().prepareStatement(sqlInsertEndereco);
			ps.setString(1, pf.getEndereco().getLogradouro());
			ps.setInt(2, pf.getEndereco().getNumero());
			ps.setString(3, pf.getEndereco().getComplemento());
			ps.setString(4, pf.getEndereco().getBairro());
			ps.setString(5, pf.getEndereco().getCidade());
			ps.setString(6, pf.getEndereco().getEstado());
			ps.setInt(7, pf.getEndereco().getCep());
			ps.setInt(8, cod_pessoa_gerado);

			ps.execute();
			rs.close();

			ps.close();
			psCod.close();
			return true;
		} catch (SQLException e) {

			System.out.println(e.getMessage());
			return false;
		}

	}
	
	public boolean deleteCliente(Integer codigo) {
		PreparedStatement ps = null;
		
		Cliente c = findClienteByCodigo(codigo);
		
		
		try {
			ps = jdbc.getConexao().prepareStatement("DELETE FROM T20WPS2.tb_cliente c WHERE c.cod_cliente = ?;"
					+ "DELETE FROM T20WPS2.tb_pf pf WHERE pf.cod_pf = ?;"
					+ "DELETE FROM T20WPS2.tb_documento_pf dpf WHERE dpf.cod_documento_pf = ?;"
					+ "DELETE FROM T20WPS2.tb_telefone t WHERE t.cod_pessoa = ?;"
					+ "DELETE FROM T20WPS2.tb_endereco e WHERE e.cod_pessoa = ?;"
					+ "DELETE FROM T20WPS2.tb_pessoa p WHERE p.cod_pessoa = ?;");
			
			ps.setInt(1, codigo);
			ps.setInt(2, c.getPessoaFisica().getCodPessoa());
			ps.setInt(3, c.getPessoaFisica().getDocumentoPessoaFisica().getCodDocPf());
			ps.setInt(4, c.getPessoaFisica().getCodPessoa());
			ps.setInt(5, c.getPessoaFisica().getCodPessoa());
			ps.setInt(6, c.getPessoaFisica().getCodPessoa());
			
			if(ps.executeUpdate() > 0) {
				return true;
			}
		
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return false;

	}

}
