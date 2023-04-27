package br.edu.ifgoiano.controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String senha = req.getParameter("senha");
	
	String htmlSucesso = new String();
	htmlSucesso = "<head><body><h1>Login efetuado com sucesso!</h1></body></head>";
	
	String htmlFalha = new String();
	htmlFalha = "<head><body><h1>Email ou senha inválidos!</h1></body></head>";
			
	if(senha.equals("123456")) {
		PrintWriter writer = resp.getWriter();
		writer.println(htmlSucesso);
	}else {
		PrintWriter writer = resp.getWriter();
		writer.println(htmlFalha);
	}
}
}
