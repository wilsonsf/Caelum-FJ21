<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<td>${tarefa.id}</td>
<td>${tarefa.descricao}</td>
<td>Finalizada</td>
<td><fmt:formatDate value="${tarefa.dataFinalizacao.time }" pattern="yyyy-MM-dd" /></td>
<td><a href="removeTarefa?id=${tarefa.id }">Remover</a></td>
<td><a href="mostraTarefa?id=${tarefa.id }">Alterar</a></td>