package br.edu.ifgoiano.repositorio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

import br.edu.ifgoiano.entidade.Tarefas;

public class TarefasRepositorio {
	private Connection getConnection() throws SQLException {
		return DriverManager.
		        getConnection("jdbc:h2:~/tarefadb", "sa", "sa");
	}
	
	public List<Tarefas> listarTarefas(){
		ArrayList<Tarefas> lstTarefas = new ArrayList<Tarefas>();
		
		String sql = "select id, titulo, descricao from tarefa";
		try( Connection conn = this.getConnection();
				PreparedStatement pst = conn.prepareStatement(sql);){
			
			ResultSet resultSet = pst.executeQuery();
			
			while(resultSet.next()) {
				Tarefas tarefas = new Tarefas();
				tarefas.setId(resultSet.getInt("id"));
				tarefas.setTitulo(resultSet.getString("titulo"));
				tarefas.setDescricao(resultSet.getString("descricao"));
				
				lstTarefas.add(tarefas);
			}
		}catch(SQLException ex) {
			System.out.println("Erro na consulta de tarefas");
			ex.printStackTrace();
		}
		return lstTarefas;
		
	}
	
	public Tarefas obterTarefa(Integer id) {
		String sql = "select titulo, descricao from tarefa where id = ?";
		
		try( Connection conn = this.getConnection();
				PreparedStatement pst = conn.prepareStatement(sql);){
			pst.setInt(1, id);
			
			ResultSet resultSet = pst.executeQuery();
			
			while(resultSet.next()) {
				Tarefas tarefa = new Tarefas();
				tarefa.setId(id);
				tarefa.setTitulo(resultSet.getString("titulo"));
				tarefa.setDescricao(resultSet.getString("descricao"));
				
				return tarefa;
			}
		}catch(SQLException ex) {
			System.out.println("Erro na obtenção de Tarefa");
			ex.printStackTrace();
		}
		
		throw new RuntimeErrorException(null, "Tarefa não encontrada");
	}
	
	
}
