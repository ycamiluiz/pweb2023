<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversor de Moedas</title>
</head>
<body>
	<h1>Conversor de Moedas</h1>
	
	<%
		String cotacao = request.getParameter("cotacao");
		String reais = request.getParameter("reais");
		
		if(cotacao.isEmpty() || reais.isEmpty()){
		
	%>
	<p>Para que a convers�o seja realizada s�o necess�rios valores v�lidos.</p>
	<%} else{ 
		Float vlrCotacao = Float.parseFloat(cotacao);
		Float vlrReais = Float.parseFloat(reais);
		
		Float vlrDolares = vlrReais / vlrCotacao;
	%>
	<p>O valor R$ <%=reais %> equivale a $ <%=vlrDolares %> na cota��o do d�lar.</p>
	<%} %>
	<a href="index.jsp">Voltar</a>
</body>
</html>