package br.edu.ifgoiano.controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/somar")
public class somar extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String n1 = req.getParameter("numero1");
		String n2 = req.getParameter("numero2");
		float soma = Float.parseFloat(n1) + Float.parseFloat(n2);
		
		System.out.println(soma);
		
		String htmlSoma = new String();
		htmlSoma = "<html><body><h1> A soma � " + soma + "</h1></body></html>";
		
		PrintWriter obj = resp.getWriter();
		obj.println(htmlSoma);
	}
}
