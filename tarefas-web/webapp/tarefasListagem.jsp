<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<h1>Lista de Tarefas</h1>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Título</th>
					<th>Descrição</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${tarefas}" var="tarefas" varStatus="id">
					<tr class="${id.count % 2 == 0 ? 'table-primary' : 'table-secondary'}">
						<td>${tarefas.id}</td>
						<td>${tarefas.titulo}</td>
						<td>${tarefas.descricao}</td>
						<td> <a href="visualizarTarefas.jsp?id=${tarefas.id}" class="btn btn-success">Visualizar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="cadastroTarefas.jsp" class="btn btn-primary">Voltar</a>
	</div>
</body>
</html>