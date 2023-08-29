package br.edu.ifgoiano.entidade;

public class Tarefas {
	private static Integer incremento = 1;
	private Integer id;
	private String titulo;
	private String descricao;
	
	public Tarefas() {
		this.id = incremento++;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
}
