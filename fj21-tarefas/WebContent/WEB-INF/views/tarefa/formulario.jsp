<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FJ21 Tarefa: Adicionar Tarefa</title>
</head>
<body>
	<h3>Adicionar tarefas</h3>
	<form action="adicionaTarefa" method="post">
		<textarea name="descricao" rows="5" cols="100"></textarea><br />
		<input type="submit" value="Adicionar" />
	</form>
</body>
</html>