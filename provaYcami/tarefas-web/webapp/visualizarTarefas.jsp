<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<h1>Tarefa</h1>
	<form action="visualizar">
		<label for="titulo">Título:</label>
		<input type="text" name="titulo" value="${tarefas.titulo}">
		<label for="descricao">Descrição:</label>
		<input type="text" name="descricao" value="${tarefas.descricao}">
		<a href="cadastrarTarefas">Voltar</a>
	</form>
</body>
</html>