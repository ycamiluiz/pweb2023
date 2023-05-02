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
	<form action="mostraArea.jsp">
		<label>Valor da base:</label>
		<input type="text" name="base">
		<label>Valor da altura:</label>
		<input type="text" name="altura">
		<input type="submit" value="Calcular!">
	</form>
</body>
</html>