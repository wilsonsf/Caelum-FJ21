<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FJ21-Agenda: Primeira JSP</title>
</head>
<body>
	<%--Comentário JSP --%>
	<% String mensagem = "Bem vindo ao sistema de agenda do FJ-21!"; %>
	<% out.println(mensagem); %>
	<br />
	<%
		String autor = "Desenvolvido por Wilson de Farias";
	%>
	<%= autor %>
	<br />
	
	<%
		System.out.println("Tudo foi executado!");
	%>
	
</body>
</html>