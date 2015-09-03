package br.com.caelum.agenda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLTimeoutException;

import br.com.caelum.agenda.ConnectionFactory;
import br.com.caelum.agenda.modelo.Funcionario;

public class FuncionarioDao implements GenericDao {
	private Connection connection;

	public FuncionarioDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	public FuncionarioDao(Connection connection) {
		this.connection = connection;
	}

	@Override
	public void adiciona(Object obj) {
		if (!(obj instanceof Funcionario)) {
			return;
		}
		Funcionario funcionario = (Funcionario) obj;
		String sql = "INSERT INTO funcionarios " + "(nome,usuario,senha) "
				+ "VALUES (?,?,?)";

		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getUsuario());
			stmt.setString(3, funcionario.getSenha());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new DAOException(e);
		}

	}

	@Override
	public void altera(Object obj) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(Object obj) {
		// TODO Auto-generated method stub

	}
	
	public Funcionario pesquisa(long id) {
		PreparedStatement stmt;
		try {
			stmt = this.connection
					.prepareStatement("SELECT * FROM Contatos WHERE id == ?");

			ResultSet rs = stmt.executeQuery();
			stmt.close();

			if (rs.next()) {
				Funcionario funcionario = montaFuncionarioComResultSet(rs);
				return funcionario;
			} else {
				return null;
			}
		} catch (SQLTimeoutException e) {
			throw new DAOException(e);
		} catch (SQLException e) {
			// Conexão com o BD fechada, reabrir e tentar novamente
			throw new DAOException(e);
		}
	}

	private Funcionario montaFuncionarioComResultSet(ResultSet rs) {
		try {
			Funcionario funcionario = new Funcionario();

			funcionario.setId(rs.getLong("id"));
			funcionario.setNome(rs.getString("nome"));
			funcionario.setUsuario(rs.getString("usuario"));
			funcionario.setSenha(rs.getString("senha"));

			return funcionario;
		} catch (SQLException e) {
			// Tentou acessar um campo que não existe na tabela
			throw new DAOException(e);
		}
	}

}
