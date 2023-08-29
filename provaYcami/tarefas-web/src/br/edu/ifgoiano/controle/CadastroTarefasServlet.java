package br.edu.ifgoiano.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifgoiano.repositorio.TarefasRepositorio;

@WebServlet("/cadastrarTarefas")
public class CadastroTarefasServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TarefasRepositorio repositorio = new TarefasRepositorio();

		req.setAttribute("tarefas", repositorio.listarTarefas());

		req.getRequestDispatcher("tarefasListagem.jsp").forward(req, resp);
	}
}
