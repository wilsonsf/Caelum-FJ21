<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<title>FJ21 Tarefas: Menu</title>
</head>
<body>
<div class="container">
    <h2>Página inicial da Lista de tarefas</h2>
    <p>Bem vindo, ${usuarioLogado.login}</p>
    <a href="listaTarefas">Clique aqui</a> para acessar a lista de tarefas
</div>
</body>
</html>