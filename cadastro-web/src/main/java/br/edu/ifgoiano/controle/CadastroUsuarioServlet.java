package br.edu.ifgoiano.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastroUsuario")
public class CadastroUsuarioServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String senha1 = req.getParameter("senha1");
		String senha2 = req.getParameter("senha2");
		
		//verificar se as senhas s�o iguais
		if(senha1.equals(senha2)) {
			//redirecionar o usu�rio para tela de login
			resp.sendRedirect("index.html");
		}else {
			//redirecionar o usu�rio para a mesma p�gina de cadastro do usu�rio
			req.getRequestDispatcher("cadastroDeUsuario.html").forward(req, resp);
		}
	}
}
