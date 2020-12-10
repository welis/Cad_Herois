package dao;

import model.Cadastro;
import java.sql.Connection;
import br.com.conexao.db.Conexao;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CadastroDao {
	
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	private Statement st;
	private ArrayList<Cadastro> lista = new ArrayList<Cadastro>();
	
	public CadastroDao() {
		conn = new Conexao().getConexao();
		
	}
	
	public void inserir(Cadastro cad) {
		String sql = "INSERT INTO cad_heroi (nome,poder,idade,produtora) VALUES (?, ?, ?, ?)";
		try {
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1,cad.getNome());
			stmt.setString(2,cad.getPoder());
			stmt.setInt(3,cad.getIdade());
			stmt.setString(4,cad.getProdutora());
			stmt.execute();
			
			stmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void alterar(Cadastro cad) {
		String sql = "UPDATE cad_heroi SET nome = ?," +
				" poder = ?," +
				" idade = ?," +
				" produtora = ?" +
				" WHERE id = ?";
		try {
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1,cad.getNome());
			stmt.setString(2,cad.getPoder());
			stmt.setInt(3,cad.getIdade());
			stmt.setString(4,cad.getProdutora());
			stmt.execute();
			
			stmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(int valor) {
		String sql = "DELETE FROM cad_heroi WHERE id = "+ "valor";
		try {
			st = conn.createStatement();
			st.execute(sql);
			st.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Cadastro> listarTodos(){
		String sql =  "SELECT * FROM cad_heroi";
		
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			
			while (rs.next()) {
				Cadastro cad = new Cadastro();
				cad.setNome(rs.getString("nome"));
				cad.setPoder(rs.getString("poder"));
				cad.setIdade(rs.getInt("idade"));
				cad.setProdutora(rs.getString("produtora"));
				lista.add(cad);
			}
			rs.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
		
	}
	
	

}
