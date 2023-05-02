<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora de �reas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<h1>Calculadora de �reas</h1>
	<%
		String base = request.getParameter("base");
		String altura = request.getParameter("altura");
		
		if(base.isEmpty() || altura.isEmpty()){
	%>
	<div class="alert alert-danger" role="alert">
		<p>Para que o c�lculo seja realizado s�o necess�rios valores v�lidos!</p>
	</div>
	<%} else{
		Float vlrBase = Float.parseFloat(base);
		Float vlrAltura = Float.parseFloat(altura);
		
		Float vlrArea = vlrBase * vlrAltura / 2;
		
	%>
  		<p>A �rea do tri�ngulo de base <%=base %> e altura <%=altura %> � <%=vlrArea %> cent�metros quadrados.</p>
	<%} %>
	
	<a href="index.jsp">Voltar</a>
</body>
</html>