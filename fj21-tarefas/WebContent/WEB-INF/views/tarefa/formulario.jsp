<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/tarefas.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FJ21 Tarefa: Adicionar Tarefa</title>
</head>
<body>
	<h3>Adicionar tarefas</h3>
	<form action="adicionarTarefa" method="post">
		<textarea name="descricao" rows="5" cols="100"></textarea>
		<input type="submit" value="Adicionar" />
	</form>
</body>
</html>