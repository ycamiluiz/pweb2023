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
<%
	String nome = request.getParameter("nome");
	if(nome == null){
		nome = "";
	}
	String email = request.getParameter("email");
	if(email == null){
		email = "";
	}
%>
<div class="container-fluid">
		<h2>Cadastro Usuário</h2>
  <form action="cad" method = "post">
	<label for = "nome">Nome:</label>
	<input type = "text" name = "nome" id = "nome" value = "${param.nome}">
	<br><br>
	
	<label for = "email">Email:</label>
	<input type = "text" name = "email" id = "email" value = "${param.email}">
	<br><br>
	
	<label for = "senha1">Senha:</label>
	<input type = "password" name = "senha1" id = "senha1">
	<br><br>
	
	<label for = "senha2">Confirmar senha:</label>
	<input type = "password" name = "senha2" id = "senha2">
	<br><br>
	
	<input type = "submit" value = "salvar" class="btn btn-primary">
</form>
<%
	String senha1 = request.getParameter("senha1");
	String senha2 = request.getParameter("senha2");
	
	if(nome.isEmpty() || email.isEmpty() || senha1.isEmpty() || !senha2.isEmpty() || !senha1.equals(senha2)){%>
		<div class="alert alert-danger" role="alert">
		  <%=nome %>, algo está vazio e/ou as senhas informadas estão incorretas.
		</div>
	<%}%>
</div>
</body>
</html>