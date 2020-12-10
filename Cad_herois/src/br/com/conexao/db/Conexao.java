package br.com.conexao.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	private Connection conexao;
	
	public Conexao() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cad_super";
			conexao = DriverManager.getConnection(url, "root", "");
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void desconecta() {
		try {
			conexao.close();
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConexao() {
		return conexao;
	}

	public void setConexao(Connection conexao) {
		this.conexao = conexao;
	}
	
}