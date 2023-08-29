package br.edu.ifgoiano.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifgoiano.entidade.Tarefas;
import br.edu.ifgoiano.repositorio.TarefasRepositorio;

@WebServlet("/visualizar")
public class VisualizarTarefas extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));
		
		TarefasRepositorio repositorio = new TarefasRepositorio();
		Tarefas tarefa = repositorio.obterTarefa(id);
		req.setAttribute("tarefas", tarefa);
		req.getRequestDispatcher("visualizarTarefas.jsp").forward(req, resp);
		
	}
}
