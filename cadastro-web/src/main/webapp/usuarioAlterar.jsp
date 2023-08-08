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
	<form method="post" action="">
		<h1>Atualizar Usuário</h1>
		<label for="nome">Nome:</label>
		<input type="text" name="nome" value="${nome}">
		<label for="email">E-mail:</label>
		<input type="text" name="email" value="${email}"><br><br>
		<label for="senha1">Senha:</label>
		<input type="password" name="senha" id="senha">
		
		<input type="submit" value="Salvar" class="btn btn-primary">
</form>
</body>
</html>