<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora de Áreas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<h1>Calculadora de Áreas</h1>
	<%
		String base = request.getParameter("base");
		String altura = request.getParameter("altura");
		
		if(base.isEmpty() || altura.isEmpty()){
	%>
	<div class="alert alert-danger" role="alert">
		<p>Para que o cálculo seja realizado são necessários valores válidos!</p>
	</div>
	<%} else{
		Float vlrBase = Float.parseFloat(base);
		Float vlrAltura = Float.parseFloat(altura);
		
		Float vlrArea = vlrBase * vlrAltura / 2;
		
	%>
  		<p>A área do triângulo de base <%=base %> e altura <%=altura %> é <%=vlrArea %> centímetros quadrados.</p>
	<%} %>
	
	<a href="index.jsp">Voltar</a>
</body>
</html>