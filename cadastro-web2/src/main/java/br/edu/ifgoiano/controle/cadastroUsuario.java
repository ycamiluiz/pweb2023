package br.edu.ifgoiano.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cad")
public class cadastroUsuario extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String s1 = req.getParameter("senha1");
		String s2 = req.getParameter("senha2");

		if (!nome.isEmpty() && !email.isEmpty() && !s1.isEmpty() && !s2.isEmpty() && s1.equals(s2)) {
			resp.sendRedirect("login.html");
		}else{		
			req.getRequestDispatcher("usuarioCadastro.jsp").forward(req, resp);
		}
	}
}
