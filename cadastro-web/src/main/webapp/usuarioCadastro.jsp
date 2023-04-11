<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Cadastro de Usuário</title>
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
<form method = "post" action="cadastroUsuario">
 		<h1>Cadastro de usuário</h1>
 		
  		<label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome" value = "<% out.println(nome); %>">
        
        <label for="email">E-mail:</label>
        <input type="text" name="email" id="email" value = "<%=email%>">
        </br></br>
        
        <label for="senha1">Senha:</label>
        <input type="password" name="senha1" id="senha1">
        
        <label for="senha2">Confirmar senha:</label>
        <input type="password" name="senha2" id="senha2">
        </br></br>
        
        <input type="submit" value="salvar" class="btn btn-secundary">
        </br></br>
        
        <a class="btn btn-primary" href="cadastroUsuario" role="button">Listar Usuários</a>
        </br></br>
        
        <a class="btn btn-primary" href="index.html" role="button">Voltar</a>
</form>
</div>
<%
 String senha1 = request.getParameter("senha1");
 String senha2 = request.getParameter("senha2");
 
 if(senha1 != senha2){ %>
	 <div class="alert alert-danger" role="alert">
	  <%nome %> +
	</div>
 }
 %>
</body>
</html>