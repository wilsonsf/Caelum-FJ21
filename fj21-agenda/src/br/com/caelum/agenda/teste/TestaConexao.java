package br.com.caelum.agenda.teste;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.caelum.agenda.ConnectionFactory;

public class TestaConexao {

	public static void main(String[] args) throws SQLException {
		Connection conexao = new ConnectionFactory().getConnection();
		System.out.println("Conexão aberta!");
		conexao.close();
	}
}
